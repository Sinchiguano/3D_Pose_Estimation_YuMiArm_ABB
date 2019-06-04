#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.



from thesis_library import *
import pcl

# default camera!!!
class camera(object):
    def __init__(self):
        # In ROS, nodes are uniquely named.
        rospy.init_node('camera', anonymous=True)

        #Astra camera
        rospy.Subscriber('/camera/rgb/image_raw', Image, self.callback_rgb)
        rospy.Subscriber('/camera/depth/image_raw', Image, self.callback_depth)
        #rospy.Subscriber('/camera/depth/camera_info', CameraInfo,self.infoDepthCallback)
        #rospy.Subscriber('/camera/rgb/camera_info', CameraInfo,self.infoColorCallback)
        rospy.Subscriber('/camera/depth_registered/points', PointCloud2, self.callback_pointCloud)


        #Real sense camera
        rospy.Subscriber('/camera/color/image_raw', Image, self.callback_rgb)
        rospy.Subscriber('/camera/aligned_depth_to_color/image_raw', Image, self.callback_depth)
        rospy.Subscriber('/camera/depth/color/points', PointCloud2, self.callback_pointCloud)
        #rospy.Subscriber('/camera/color/camera_info', CameraInfo,self.infoColorCallback)
        #rospy.Subscriber('/camera/depth/image_rect_raw', CameraInfo, self.callback_depth)

        self.cv_image1=None
        self.cv_image2=None
        self.pc=None

    def callback_rgb(self,data):
        #global cv_image1
        #### direct conversion to CV2 ####
        try:
          self.cv_image1 = bridge.imgmsg_to_cv2(data, "bgr8")
          #print(type(cv_image1))
        except CvBridgeError as e:
          print(e)
          #print()

    def callback_depth(self,data):
        #global cv_image2
        try:
            self.cv_image2 = bridge.imgmsg_to_cv2(data, "passthrough")
            #print(type(self.cv_image2))
        except CvBridgeError as e:
            #print()
            print(e)
            #return None
        #return cv_image
        # cv2.imshow("Depth image. By: Casch!!!", cv_image2)
        # cv2.waitKey(3)

    def callback_pointCloud(self,data):
        #print('data',type(data))
        if data is not None:
            #print('there is something at least!!!')
            pts = list(pc2.read_points(data, skip_nans=False, field_names=("x", "y", "z")))
            #print('temp',type(temp))
            #astra camera
            if len(pts) == 307200:
                self.pc = np.array(list(pts)).reshape((480,640,3))
            else:
                #just for realsense camera
                #no working
                # points_list = []
                # for data in pc2.read_points(data, skip_nans=False, field_names=("x", "y", "z")):
                #     points_list.append([data[0], data[1], data[2]])
                #
                # pcl_data = pcl.PointCloud_PointXYZ()
                # pcl_data.from_list(points_list)
                self.pc=pts
        else:
            rospy.logerr("No point cloud image")

    def infoDepthCallback(self,msg):
        print('received info from depth camera!!!',msg)
    def infoColorCallback(self,msg):
        rospy.loginfo("received info from color camera!!!%s",msg)

    def get_image(self):
        return self.cv_image1
    def get_depth(self):
        return self.cv_image2
    def get_point_cloud(self):
        return self.pc
