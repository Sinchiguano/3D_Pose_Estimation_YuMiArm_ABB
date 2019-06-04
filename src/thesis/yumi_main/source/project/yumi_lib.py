#!/usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.

"""

"""
import numpy as np
import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from math import pi
from std_msgs.msg import String
from moveit_commander.conversions import pose_to_list
import time
import tf
import math
import std_msgs.msg
# #Home position1!!!
# homeR = geometry_msgs.msg.Pose()
# homeR.position.x,homeR.position.y,homeR.position.z = [0.24782777787129276, -0.3953053980948545, 0.8955554164884502]
# homeR.orientation.x,homeR.orientation.y,homeR.orientation.z,homeR.orientation.w =[0.23561314653820642, 0.20695140926650893, -0.7011388517117871, 0.640360734275024]
#
# homeL = geometry_msgs.msg.Pose()
# homeL.position.x,homeL.position.y,homeL.position.z =[0.17452504793232265, 0.3299045615094185, 0.940933520239665]
# homeL.orientation.x,homeL.orientation.y,homeL.orientation.z,homeL.orientation.w =[-0.22055721268782238, -0.1130449169290548, 0.2251182585699438, 0.9422829364613995]


#Home position2 given by pose of the end effector!!!
# homeR = geometry_msgs.msg.Pose()
# homeR.position.x,homeR.position.y,homeR.position.z = [0.30755871077176195, -0.3564321986989642, 0.8722720237587103]
# homeR.orientation.x,homeR.orientation.y,homeR.orientation.z,homeR.orientation.w =[0.353044337761911, -0.3033452476879635, -0.3011262957186629, 0.832264567494098]
#
# homeL = geometry_msgs.msg.Pose()
# homeL.position.x,homeL.position.y,homeL.position.z =[0.3528791810902401, 0.4244791366741478, 0.9020207460728686]
# homeL.orientation.x,homeL.orientation.y,homeL.orientation.z,homeL.orientation.w =[-0.18004346507091734, -0.07136409875823034, -0.7444500800882589, 0.6389722954481425]
#

#topics for the gripper of the yumi arms
gripperR= '/yumi/gripper_r_effort_cmd'
gripperL= '/yumi/gripper_l_effort_cmd'


#The best ever i have found it
#home position given by joint values
safeJointPositionR = [1.6379728317260742, 0.20191457867622375, -2.5927578258514404, 0.538416862487793, 2.7445449829101562, 1.5043296813964844, 1.7523150444030762]
safeJointPositionL = [-1.46564781665802, 0.3302380442619324, 2.507143497467041, 0.7764986753463745, -2.852548837661743, 1.659092664718628, 1.378138542175293]
