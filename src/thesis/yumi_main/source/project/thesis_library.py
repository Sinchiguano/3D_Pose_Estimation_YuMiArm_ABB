#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.




import sys, time

# numpy and scipy
import numpy as np
from scipy.ndimage import filters

# OpenCV
import cv2

# Ros libraries
import roslib
import rospy
from cv_bridge import CvBridge, CvBridgeError
# Ros Messages
from sensor_msgs.msg import Image, CameraInfo, PointCloud2
import sensor_msgs.point_cloud2 as pc2


# initialize cv bridge
bridge = CvBridge()


#yumi robot

import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from math import pi
from std_msgs.msg import String
from moveit_commander.conversions import pose_to_list

#for mesh and pcd
import copy
import numpy as np
import time

#for the 3d data manipulation!!!!!!!!!!!!!
from open3d import read_point_cloud, draw_geometries, KDTreeSearchParamHybrid
from open3d import voxel_down_sample, estimate_normals, compute_fpfh_feature
from open3d import registration_ransac_based_on_feature_matching, TransformationEstimationPointToPoint
from open3d import CorrespondenceCheckerBasedOnEdgeLength,RANSACConvergenceCriteria
from open3d import CorrespondenceCheckerBasedOnDistance, statistical_outlier_removal

import open3d
from open3d import PointCloud, Vector3dVector, write_point_cloud,read_triangle_mesh
import pcl



#multiregistration
from open3d import select_down_sample,create_rgbd_image_from_color_and_depth,read_image
import pcl
import cv2
import glob
import matplotlib.pyplot as plt
from open3d import read_pinhole_camera_intrinsic,create_point_cloud_from_rgbd_image

#libraries useful for the target locator file 26
from thesis_class import camera
import numpy as np
import cv2
from matplotlib import pyplot as plt
import copy
import math
from transforms3d.euler import euler2mat, mat2euler
import rospy
import geometry_msgs.msg
from geometry_msgs.msg import Point, Pose, Quaternion, Twist, Vector3
from pyquaternion import Quaternion
import tf
import tf2_ros
import geometry_msgs.msg
import scipy
from tf.transformations import *
