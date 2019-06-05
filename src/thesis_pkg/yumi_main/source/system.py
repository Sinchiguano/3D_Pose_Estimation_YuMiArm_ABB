#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.


import sys
sys.path.insert(0, '/home/casch/yumi_depends_ws/src/thesis_pkg/yumi_main/source/project')



from thesis_library import *
from thesis_class import *
from open3d import uniform_down_sample,registration_icp,TransformationEstimationPointToPlane,TransformationEstimationPointToPoint
import pcl
import csv
import time
from tf.transformations import euler_from_quaternion, quaternion_from_euler
######################################



model_path='pipeline_model/template_real/'
scene_path='pipeline_pcd/'

tmp='output_pipeline/'
name_file=tmp+'transform_data.csv'

def do_pointcloud(frame,pc,counter):
    global scene_path
    pcd=do_vector3d(pc)
    tmp=scene_path+'pointcloud'+str(counter)
    cv2.imwrite(tmp+'.jpg', frame)

    write_point_cloud(tmp+'base_link'+'.pcd', pcd)
    write_point_cloud(tmp+'base_link'+'.ply', pcd)

    return pcl.load(tmp+'base_link'+'.pcd')

def do_vector3d(pc):

    temp=np.asarray(pc)
    pc=np.nan_to_num(pc)
    pcd = PointCloud()
    start_timer=time.time()
    pcd.points = Vector3dVector(pc)

    # #Tuesday 4 June 2019 time 18:36
    # [[ 0.01816031,  0.63209102, -0.77468132,  0.963],
    #                 [ 0.99983109, -0.00928973,  0.0158585,   0.019],
    #                 [ 0.00282743, -0.77483846, -0.63215296,  0.336],
    #                 [ 0.,          0.,          0.,          1.]])
    #Wednesday 5 June 2019
    pcd.transform([[-0.00719423,  0.62009998, -0.78448981,  0.984 ],
                [ 0.99986146, -0.00731509, -0.01495153,  0.021],
                [-0.01501005, -0.78448869, -0.61996144,  0.337],
                [ 0.,          0. ,         0.,          1.  ]])
    return pcd

def do_dataset(source,target):
    '''Preprocessing step'''
    #print("Downsample the point cloud and get features with FPFH")
    source_down, source_fpfh = do_preprocessing_pcd(source, 0.004)#in mm
    tmp_source=np.asarray(source_down.points)

    #print("Downsample the point cloud and get features with FPFH")
    target_down, target_fpfh = do_preprocessing_pcd(target, 0.004)#good tunning
    tmp_target=np.asarray(target_down.points)

    return source, target, source_down, target_down, source_fpfh, target_fpfh

def do_preprocessing_pcd(pcd, voxel_size):
    '''Downsample the point cloud'''
    pcd_down = voxel_down_sample(pcd, voxel_size)

    '''Estimate normals'''
    radius_normal = voxel_size * 6
    estimate_normals(pcd_down, KDTreeSearchParamHybrid(radius = radius_normal, max_nn = 30))

    '''Fast Point Feature Histograms'''
    radius_feature = voxel_size * 6
    pcd_fpfh = compute_fpfh_feature(pcd_down,KDTreeSearchParamHybrid(radius = radius_feature, max_nn = 100))

    return pcd_down, pcd_fpfh

def do_ransac_registration(source_down, target_down, source_fpfh, target_fpfh):

    '''RANSAC registration is applied on downsampled point clouds.'''
    threshold = 0.003
    result = registration_ransac_based_on_feature_matching(source_down, target_down, source_fpfh, target_fpfh,threshold,
            TransformationEstimationPointToPoint(False), 4,
            [CorrespondenceCheckerBasedOnEdgeLength(0.9),CorrespondenceCheckerBasedOnDistance(threshold)],
            RANSACConvergenceCriteria(400000, 1000))
    return result

def do_icp_registration(source, target, transformation):


    '''Point-to-plane ICP registration is applied on original points'''
    estimate_normals(source, KDTreeSearchParamHybrid(radius = 0.005, max_nn = 20))
    estimate_normals(target, KDTreeSearchParamHybrid(radius = 0.005, max_nn = 20))
    threshold = 0.005
    result = registration_icp(source, target, threshold,transformation,TransformationEstimationPointToPlane())
    return result

def do_drawing_registration(source, target, transformation):

    source_tmp= copy.deepcopy(source)
    target_tmp = copy.deepcopy(target)
    source_tmp.paint_uniform_color([1, 0.706, 0])
    target_tmp.paint_uniform_color([0, 0.651, 0.929])

    source_tmp.transform(transformation)
    draw_geometries([source_tmp, target_tmp])

def do_passthrough_filter(point_cloud, name_axis = 'z', min_axis = 0.6, max_axis = 1.1):
    pass_filter = point_cloud.make_passthrough_filter()
    pass_filter.set_filter_field_name(name_axis)
    pass_filter.set_filter_limits(min_axis, max_axis)
    return pass_filter.filter()

def do_ransac_plane_segmentation(point_cloud, max_distance = 0.01):

    segmenter = point_cloud.make_segmenter()
    segmenter.set_model_type(pcl.SACMODEL_PLANE)
    segmenter.set_method_type(pcl.SAC_RANSAC)
    segmenter.set_distance_threshold(max_distance)
    inlier_indices, coefficients = segmenter.segment()

    inliers = point_cloud.extract(inlier_indices, negative = False)
    outliers = point_cloud.extract(inlier_indices, negative = True)
    return inliers, outliers

def do_csv_file(tran_rot,counter1,computation_time,max_fitness,min_rmse,aux_rmse,aux_fitness):
    global name_file
    aux_angles=do_rotation_matrix_to_euler_angles(tran_rot[:-1,:-1])
    tmp_list=list(tran_rot[:-1,3])
    q = tf.transformations.quaternion_from_matrix(tran_rot)
    (roll, pitch, yaw) = euler_from_quaternion(q)
    from pyquaternion import Quaternion
    a= Quaternion(matrix=tran_rot)
    print(a)
    print("{} + {}i + {}j + {}k".format(a[0], a[1], a[2], a[3]))
    quat=[a[0], a[1], a[2], a[3]]
    with open(name_file, 'a') as csvfile:# a means append
        filewriter = csv.writer(csvfile, delimiter=',',quotechar='|', quoting=csv.QUOTE_MINIMAL)
        #filewriter.writerow(computation_time+aux_rmse+min_rmse+aux_fitness+max_fitness)
        filewriter.writerow(computation_time)

# Calculates rotation matrix to euler angles
def do_rotation_matrix_to_euler_angles(R) :
    #inspire by the following source
    #https://www.learnopencv.com/rotation-matrix-to-euler-angles/
    sy = math.sqrt(R[0,0] * R[0,0] +  R[1,0] * R[1,0])

    singular = sy < 1e-6

    if  not singular :
        x = math.atan2(R[2,1] , R[2,2])
        y = math.atan2(-R[2,0], sy)
        z = math.atan2(R[1,0], R[0,0])
    else :
        x = math.atan2(-R[1,2], R[1,1])
        y = math.atan2(-R[2,0], sy)
        z = 0
    return [x* 180 / math.pi, y* 180 / math.pi, z* 180 / math.pi]

def do_publishing_pose(br,transformation):
    pose_translation=list(transformation[:-1,3])
    pose_quaternion = tf.transformations.quaternion_from_matrix(transformation)
    print('pose_translation {}'.format(pose_translation))
    print('pose_quaternion {}'.format(pose_quaternion))

    """input in m and rad"""
    t = geometry_msgs.msg.TransformStamped()
    t.header.stamp = rospy.Time.now()
    t.header.frame_id = 'world'
    t.child_frame_id = 'pose_object'
    t.transform.translation.x = pose_translation[0]+0.01
    t.transform.translation.y = pose_translation[1]+0.05
    t.transform.translation.z = pose_translation[2]+0.12
    t.transform.rotation.w = pose_quaternion[3]
    t.transform.rotation.x = pose_quaternion[0]
    t.transform.rotation.y = pose_quaternion[1]
    t.transform.rotation.z = pose_quaternion[2]
    br.sendTransform(t)

def main():
    counter1=0
    counter2=0
    counter3=0
    import sys
    print "This is the name of the script: ", sys.argv[0]
    rate = rospy.Rate(10) # 10hz
    br = tf2_ros.TransformBroadcaster()
    transformation_ = np.asarray([[1,0,0,0.469],
                                 [0,1,0,0.057],
                                 [0,0,1,0.115],
                                 [0, 0, 0, 1]])

    flag=False
    threshold = 0.02
    while not rospy.is_shutdown():
        counter1+=1

        # Capture 2D-data
        frame=camObj.get_image()

        # Capture depth data
        depth=camObj.get_depth()

        # Capture 3D-data
        pc=camObj.get_point_cloud()

        if pc is None:
            print('no PointCloud2!!!')
            continue
        elif frame is None:
            print('no Frame!!!')
            continue
        elif depth is None:
            print('no depth image!!!')
            continue


        #Enter to process a depth image and generate the 6D pose estimation
        command=cv2.waitKey(1) & 0xFF
        print('Ready to take scene data!!!')
        print('press t to take a scene image...')
        if command == ord('t'):
            """Get a scene cloud in the world coordinate system"""
            pcd=do_pointcloud(frame,pc,counter2)
            cloud=copy.deepcopy(pcd)

            #######
            #for testing purposes
            pcl.save(pcd,tmp+str(counter1)+'cloud'+'.pcd')
            pcd = read_point_cloud(tmp+str(counter1)+'cloud'+'.pcd')
            write_point_cloud(tmp+str(counter1)+'cloud'+'.ply', pcd)
            cv2.imwrite(tmp+str(counter1)+'img'+'.jpg', frame)
            #draw_geometries([pcd])

            counter2+=1
            #--------------------------------------------------------
            # Threshold
            filter = do_passthrough_filter(point_cloud = cloud,name_axis = 'x', min_axis = 0.30, max_axis = 0.70)
            filter = do_passthrough_filter(point_cloud = filter,name_axis = 'y', min_axis = -0.10, max_axis = 0.35)
            pcl.save(filter,scene_path +'filter_objects_'+str(counter2)+'.pcd' )
            #print('filter done!')

            # Segmentation process in order to separate the object from table
            #--------------------------------------------------------
            #
            table, objects = do_ransac_plane_segmentation(filter, max_distance = 0.01)
            pcl.save(objects,scene_path +'objects_'+str(counter2)+'.pcd' )
            print('segmentation done!')

            pcd = read_point_cloud(scene_path+'objects_'+str(counter2)+'.pcd')
            write_point_cloud(scene_path +'objects_'+str(counter2)+'.ply', pcd)
            #print('change done')


            #The target cloud is a scene image, it is already mapped into the world coordinate system (T: World -> Camera)
            target=read_point_cloud(scene_path+'objects_'+str(counter2)+'.pcd')


            #Template to match with the image taken from scene
            template_ = [read_point_cloud(rgbd) for rgbd in glob.glob(model_path+'template*'+'.ply')]



            start = time.time()
            '''
            Function evaluate_registration calculates two main metrics.
            fitness measures the overlapping area (# of inlier correspondences / # of points in target). Higher the better.
            inlier_rmse measures the RMSE of all inlier correspondences. Lower the better.
            '''
            max_fitness=0.5
            max_fitness_index=0
            rmse=0.0
            rmse_=list()
            fitness_=list()
            for i, source in enumerate(template_):
                #DOWNSAMPLE AND COMPUTE FAST POINT FEATURE HISTOGRAM-->PREPROCESSING STEP: DATA MANIPULATION OF THE POINT CLOUD
                source, target, source_down, target_down, source_fpfh, target_fpfh=do_dataset(source,target)
                #draw_geometries([source_down,target_down])

                #RANSAC REGISTRATION-->>global registration
                #-------------------
                ransac_output_tmp=do_ransac_registration(source_down, target_down, source_fpfh, target_fpfh )

                #ICP REGISTRATION -->>local registration, point to plane approach
                #-------------------
                icp_output_tmp = do_icp_registration(source, target,ransac_output_tmp.transformation)
                end = time.time()
                rmse_.append(icp_output_tmp.inlier_rmse)
                fitness_.append(icp_output_tmp.fitness)
                if icp_output_tmp.fitness>max_fitness:
                    #print('New max_fitness')
                    max_fitness=icp_output_tmp.fitness
                    min_rmse=icp_output_tmp.inlier_rmse
                    icp_output=icp_output_tmp
                    ransac_output=ransac_output_tmp
                    source_=template_[i]
                    transformation_=icp_output.transformation
                    do_csv_file(icp_output.transformation,counter1,[end - start],[max_fitness],[min_rmse],rmse_,fitness_)
                    #do_drawing_registration(source_, target, ransac_output.transformation)
                    #do_drawing_registration(source_, target, icp_output.transformation)
                    do_publishing_pose(br,transformation_)
        do_publishing_pose(br,transformation_)

        cv2.imshow('frame',frame)
    cv2.destroyAllWindows()

if __name__ == '__main__':
    camObj=camera()
    main()
