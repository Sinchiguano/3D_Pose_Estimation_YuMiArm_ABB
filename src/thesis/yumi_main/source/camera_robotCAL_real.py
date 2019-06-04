#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the MIT License license.

"""
Finally I got in xyz coordinates according to ROS
"""

import sys
sys.path.insert(0, '/home/casch/yumi_depends_ws/src/thesis_pkg/yumi_main/scripts/project')
from thesis_library import *



euler_angles_=[0,0,0]
position_=[0.0,0.0,0.0]

##convert a rot and trans matrix to a 4x4 matrix
def data_to_transform(r_matrix,t_position):
    mat =np.hstack((r_matrix,t_position))
    mat=np.vstack((mat,[0.0,0.0,0.0,1.0]))
    return mat

#convert a 4x4 matrix to a Pose message
def transform_to_pose(mat):

    pose = Pose()
    pose.position.x = mat[0,3]
    pose.position.y = mat[1,3]
    pose.position.z = mat[2,3]
    quat = tf.transformations.quaternion_from_matrix(mat)
    pose.orientation.x = quat[0]
    pose.orientation.y = quat[1]
    pose.orientation.z = quat[2]
    pose.orientation.w = quat[3]
    return pose

def pose_camera_callback(msg):

    global euler_angles_
    global position_

    position_=[msg.position.x,msg.position.y,msg.position.z]
    quaternion_=msg.orientation
    quaternion_tmp=[quaternion_.x,quaternion_.y,quaternion_.z,quaternion_.w]
    roll_, pitch_, yaw_=tf.transformations.euler_from_quaternion(quaternion_tmp)
    euler_angles_=[roll_,pitch_,yaw_]

def publish_transforms(br):

    global euler_angles_
    global position_

    # t0 = geometry_msgs.msg.TransformStamped()
    # t0.header.stamp = rospy.Time.now()
    # t0.header.frame_id = "world"
    # t0.child_frame_id = "panda_link0"
    # #t0.child_frame_id = "yumi_base_link"
    # #t0.child_frame_id = "base_link"
    # t0.transform.translation.x = 0.0
    # t0.transform.translation.y = 0.0
    # t0.transform.translation.z = 0.0
    # tmp_rot=np.array([[1,0, 0], [0, 1, 0],[0, 0, 1]])
    # tmp_trans=np.array([[0.30],[0],[0] ])
    # myrot =np.hstack((tmp_rot,tmp_trans))
    # myrot=np.vstack((myrot,[0.0,0.0,0.0,1.0]))
    # q0 = tf.transformations.quaternion_from_matrix(myrot)
    # t0.transform.rotation.x = q0[0]
    # t0.transform.rotation.y = q0[1]
    # t0.transform.rotation.z = q0[2]
    # t0.transform.rotation.w = q0[3]
    # br.sendTransform(t0)

    # t1 = geometry_msgs.msg.TransformStamped()
    # t1.header.stamp = rospy.Time.now()
    # t1.header.frame_id = "world"
    # t1.child_frame_id = "target"
    # t1.transform.translation.x = 0.30
    # t1.transform.translation.y = 0.0
    # t1.transform.translation.z = 0.0
    # q1 = tf.transformations.quaternion_from_euler(0, 0, 0)
    # t1.transform.rotation.x = q1[0]
    # t1.transform.rotation.y = q1[1]
    # t1.transform.rotation.z = q1[2]
    # t1.transform.rotation.w = q1[3]
    # br.sendTransform(t1)

    t2 = geometry_msgs.msg.TransformStamped()
    t2.header.stamp = rospy.Time.now()
    t2.header.frame_id = "yumi_tcp"
    t2.child_frame_id = "camera_link"
    t2.transform.translation.x = 1.0*position_[0]
    t2.transform.translation.y = 1.0*position_[1]
    t2.transform.translation.z = 1.0*position_[2]
    #orientation according to openCV
    q3 = tf.transformations.quaternion_from_euler(euler_angles_[0],euler_angles_[1],euler_angles_[2])
    #orientation of camera link. which is parallel to world frame
    q2 = tf.transformations.quaternion_from_euler(math.pi/2,-math.pi/2,0)
    #correction of camera frame according to openCV orientation
    q4=quaternion_multiply(q3,q2)#rotation,origin
    t2.transform.rotation.x = q4[0]
    t2.transform.rotation.y = q4[1]
    t2.transform.rotation.z = q4[2]
    t2.transform.rotation.w = q4[3]
    br.sendTransform(t2)

def print_information(rotation_vector,translation_vector,rvec_matrix):


    global euler_angles
    print("\n\nThe world coordinate systems origin in-->> camera's coordinate system:")
    print("===rotation_vector:")
    print(rotation_vector)
    print("===rotation_matrix:")
    print(rvec_matrix)
    print("===translation_vector:")
    print(translation_vector)

    print("\n\nThe camera origin in -->>Yumi TCP coordinates system:")
    print("===camera rvec_matrix:")
    print(rvec_matrix.T)
    print("===camera translation_vector:")
    print(-np.dot(rvec_matrix.T, translation_vector))

    print('\n\n-----------------------------------------------------')

def draw_show_on_image(frame,axi_imgpts,corners,ret,line_width=2):

    # We can now plot limes on the 3D image using the cv2.line function,numpy.ravel-->Return a contiguous flattened array.
    #cv2.drawChessboardCorners(frame, (8,9), corners, ret)#column and rows 7x9 after the calibration i do not need anymore
    cv2.line(frame, tuple(axi_imgpts[3].ravel()), tuple(axi_imgpts[1].ravel()), (0,255,0), line_width) #GREEN Y
    cv2.line(frame, tuple(axi_imgpts[3][0]), tuple(axi_imgpts[2].ravel()), (255,0,0), line_width) #BLUE Z
    cv2.line(frame, tuple(axi_imgpts[3,0]), tuple(axi_imgpts[0].ravel()), (0,0,255), line_width) #RED x

    text_pos = (axi_imgpts[0].ravel() + np.array([3.5,-7])).astype(int)
    cv2.putText(frame,'X', tuple(text_pos),cv2.FONT_HERSHEY_PLAIN, 1, (0, 0,255))
    text_pos = (axi_imgpts[1].ravel() + np.array([3.5,-7])).astype(int)
    cv2.putText(frame,'Y', tuple(text_pos),cv2.FONT_HERSHEY_PLAIN, 1, (0, 0,255))
    text_pos = (axi_imgpts[2].ravel() + np.array([3.5,-7])).astype(int)
    cv2.putText(frame,'Z', tuple(text_pos),cv2.FONT_HERSHEY_PLAIN, 1, (0, 0,255))

    text_pos = (axi_imgpts[3].ravel() + np.array([200,50])).astype(int)
    cv2.putText(frame,'1unit=1cm', tuple(text_pos),cv2.FONT_HERSHEY_PLAIN, 1, (0, 0,255))

    # Display the resulting frame
    cv2.imshow('Target locator',frame)
    cv2.imwrite('test.jpg', frame)

def locate_target_orientation(frame,ret, corners):

    #Vertical configuration
    x,y=np.meshgrid(range(8),range(9))#col row vertical
    world_points_3d=np.hstack((y.reshape(72,1)*0.01,x.reshape(72,1)*0.01,np.zeros((72,1)))).astype(np.float32)


    # #last calibration
    # list_matrix=[604.112077, 0.000000, 324.510529, 0.000000, 605.763408, 245.996710, 0.000000, 0.000000, 1.000000]
    # cameraMatrix_ar=np.asarray(list_matrix).reshape(3,3)
    # distCoef=[0.099885, -0.224617, 0.004332, 0.000217, 0.000000]
    # distCoef_ar=np.asarray(distCoef).reshape(len(distCoef),1)

    # #May_2_2019
    # list_matrix=[630.502008, 0.000000, 321.816337, 0.000000, 633.083577, 239.328291, 0.000000, 0.000000, 1.000000]
    # cameraMatrix_ar=np.asarray(list_matrix).reshape(3,3)
    # distCoef=[0.135824, -0.338182, 0.004157, -0.006478, 0.000000]
    # distCoef_ar=np.asarray(distCoef).reshape(len(distCoef),1)

    # #May_17_2019 
    list_matrix=[605.639808, 0.000000, 299.642146, 0.000000, 605.730544, 253.182947, 0.000000, 0.000000, 1.000000]
    cameraMatrix_ar=np.asarray(list_matrix).reshape(3,3)
    distCoef=[0.100646, -0.217538, 0.000350, -0.004858, 0.000000]
    distCoef_ar=np.asarray(distCoef).reshape(len(distCoef),1)





    #Rotation vector (radians)
    (success, rotation_vector, translation_vector) = cv2.solvePnP(world_points_3d, corners, cameraMatrix_ar, distCoef_ar, flags=cv2.SOLVEPNP_ITERATIVE)

    # World coordinates system
    axis = np.float32([[0.09,0,0],[0,0.08,0],[0,0,0.06],[0,0,0]])
    axis_imgpts, jacobian = cv2.projectPoints(axis, rotation_vector, translation_vector,cameraMatrix_ar, distCoef_ar)

    # Rotation_vector into rotation_matrix
    rvec_matrix = cv2.Rodrigues(rotation_vector)[0]

    return axis_imgpts,corners,ret,rvec_matrix,translation_vector,rotation_vector

def main():

    counter=0
    tmpNamec='temp2.jpg'

    pub_pose = rospy.Publisher('pose_yumi_tcp_camera', Pose, queue_size=10)
    sub_pose = rospy.Subscriber('/pose_yumi_tcp_camera', Pose, pose_camera_callback)
    br = tf2_ros.TransformBroadcaster()

    rate = rospy.Rate(10) # 10hz

    import sys
    print "This is the name of the script: ", sys.argv[0]
    #flag=sys.argv[1]

    while not rospy.is_shutdown():

        counter+=1

        # Capture frame-by-frame
        #frame=cv2.imread('temp3.jpg')
        frame=camObj.get_image()

        #print(type(frame))
        if frame is None:
            print('no image!!!')
            continue

        if cv2.waitKey(1) & 0xFF == ord('q'):
            cv2.imwrite('temp3.jpg', frame)
            break
        try:
            # 2D image points
            ret, corners = cv2.findChessboardCorners(frame, (8,9))

            corners=corners.reshape(-1,2)#undefied number of rows
            if not ret:
                print('\nPlease, locate well the calibration target!!!')
                continue
        except Exception as ex:
            print('\nStatus of findChessboardCorners: {}'.format(ret))
            print('Please, locate well the calibration target!!!')
            print(ex)
            print('-------------------------------------------------')
            continue

        # Extrinsic calibration!!!
        axis_imgpts,corners,ret,rvec_matrix,translation_vector,rotation_vector= locate_target_orientation(frame,ret, corners)


        # print information about rotation and translation for the camera and world frame
        print_information(rotation_vector,translation_vector,rvec_matrix)

        #draw and display lines and text on the image
        draw_show_on_image(frame,axis_imgpts,corners,ret)

        # get transform matrix from rotation and translation of the camera frame relative to the world frame
        mat=data_to_transform(rvec_matrix.T,-np.dot(rvec_matrix.T, translation_vector))


        # get the pose of the camera frame relative to the world frame
        pose=transform_to_pose(mat)

        # publish pose of the camera frame
        pub_pose.publish(pose)

        # publish transform for the following coordinate frames: target, camera and world
        publish_transforms(br)

        # we should expect to go through the loop 10 times per second
        rate.sleep()

        print('\ncounter:',counter,'\n')
    # When everything done, release the capture
    cv2.destroyAllWindows()


if __name__ == '__main__':
    camObj=camera()
    main()
