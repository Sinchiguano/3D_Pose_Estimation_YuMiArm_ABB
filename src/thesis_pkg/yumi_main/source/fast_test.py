#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2019 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the MIT License license.

"""

"""
import sys
sys.path.insert(0, '/home/casch/yumi_depends_ws/src/thesis_pkg/yumi_main/source/project')
from thesis_library import *

# from yumi_class import MoveGroup,all_close,measurements
from yumipy import YuMiRobot
from yumipy import YuMiState,YuMiArm_ROS
from autolab_core import RigidTransform

# #first movement
# moves_deg = np.array([[-94.78, -45.82, 18.86, 113.22, 70.02, -69.66, 91.11]])

# #second movement
# moves_deg = np.array([[-91.98, -44.15, 21.6, 111.06, 71.47, -69.94, 87.21]])
# qtn_temp= [-0.03201502 , 0.99946886, -0.00600282, -0.00100047]

#thirds measurement
#moves_deg = np.array([[-104.76, -67.99, -41.92, 127.73, 77.55, -91.24, 47.51]])
moves_deg = np.array([[-104.07, -71.35, -36.44, 132.22, 84.2, -87.31, 42.0]])

# pose: Tra: [0.46938002 0.05667    0.11490001]
#  Rot: [[ 0.99992593 -0.01206332 -0.00161552]
#  [-0.0119352  -0.99787801  0.06400804]
#  [-0.00238424 -0.06398402 -0.99794808]]
#  Qtn: [-0.03201502  0.99946886 -0.00600282 -0.00100047]
#  from tool to world
# state: [-91.98, -44.15, 21.6, 111.06, 71.47, -69.94, 87.21]


#End effector....
tool_cesar_cal = RigidTransform(np.array([ [-1, 0,  0],
                                           [0,-1,  0],
                                           [0, 0, 1]]),np.array([0, 0.0, 0.1142]))

g_timestamp_last_move = 0
g_index_last_move = 0

def move(yumi_robot):
    import time
    global g_index_last_move
    global g_timestamp_last_move


    #Object that encapsulates a yumi arm joint angle configuration.
    moves = [YuMiState(p) for p in moves_deg]

    g_index_last_move = (g_index_last_move + 1) % len(moves)

    yumi_robot.left.goto_state(moves[g_index_last_move],wait_for_res=False)
    g_timestamp_last_move = time.time()


def pose_to_tf(br,pose_translation,pose_quaternion):

    """input in m and rad"""

    t = geometry_msgs.msg.TransformStamped()
    t.header.stamp = rospy.Time.now()
    t.header.frame_id = 'world'
    t.child_frame_id = 'yumi_tcp'
    t.transform.translation.x = pose_translation[0]
    t.transform.translation.y = pose_translation[1]
    t.transform.translation.z = pose_translation[2]
    t.transform.rotation.w = pose_quaternion[0]
    t.transform.rotation.x = pose_quaternion[1]
    t.transform.rotation.y = pose_quaternion[2]
    t.transform.rotation.z = pose_quaternion[3]
    br.sendTransform(t)

def main():
    global home_left
    rospy.init_node('tcp_tf', anonymous=True)
    br = tf2_ros.TransformBroadcaster()

    y = YuMiRobot(arm_type='remote')

    global tool_cesar_cal
    y.left.set_tool(tool_cesar_cal)
    y.right.set_tool(tool_cesar_cal)



    state_left = y.left.get_state(raw_res=False)
    state_right = y.right.get_state(raw_res=False)
    print('state_left: {}'.format(state_left))
    #print('state_right: {}'.format(state_right))
    exit(0)
    y.left.close_gripper(no_wait=False, wait_for_res=True)
    y.right.close_gripper(no_wait=False, wait_for_res=True)
    y.left.open_gripper(no_wait=False, wait_for_res=True)
    y.right.open_gripper(no_wait=False, wait_for_res=True)

    exit(0)
    #bridge position---------------------
    state_left_b=[-90.8, -59.74, 17.98, 112.48, 87.42, -61.76, 66.21]
    state_right_b=[92.48, -55.08, 15.49, -111.06, 82.59, 55.73, -70.21]

    y.left.goto_state(YuMiState(state_left_b) ,wait_for_res=False)
    y.right.goto_state(YuMiState(state_right_b) ,wait_for_res=False)

    #home position-----------------------
    state_left_h=[-59.49, -77.18, 16.56, 112.06, 63.68, -112.18, 66.82]
    state_right_h= [59.78, -72.42, 21.53, -112.84, 63.46, -55.3, -67.8]


    y.left.goto_state(YuMiState(state_left_h) ,wait_for_res=False)
    y.right.goto_state(YuMiState(state_right_h) ,wait_for_res=False)

 
    rate = rospy.Rate(10)
    while (True):
    	pose = y.left.get_pose(raw_res=False)
    	print('pose: {}'.format(pose))
    	state = y.left.get_state(raw_res=False)
    	print("state: {}".format(state))

        print('moving!!!')
        # pose.translation=[0.48,  0.10, 0.04]

        # #pose.translation[1] += 0.03
        # #print(y.left.is_pose_reachable(pose))
        # state_robot_1=y.left.goto_pose(pose, linear=True, relative=False, wait_for_res=True)
        # print('state_robot {}'.format(state_robot_1))
        # if state_robot_1:
        #     #y.left.open_gripper(no_wait=False, wait_for_res=True)
        #     time.sleep(3)
        #     print('done...')
        #     pose.translation=[0.45,  0.05, 0.03]
        #     #print(y.left.is_pose_reachable(pose))
        #     state_robot_2=y.left.goto_pose(pose, linear=True, relative=False, wait_for_res=True)
        #     #y.left.close_gripper(no_wait=False, wait_for_res=True)
        #     time.sleep(3)
        #     if(state_robot_2):
        #         print('done...')
        #         pose.translation=[0.50,  0.10, 0.03]
        #         #print(y.left.is_pose_reachable(pose))
        #         state_robot_3=y.left.goto_pose(pose, linear=True, relative=False, wait_for_res=True)
        #         time.sleep(3)
        #     continue
        # else:
        #     pose.translation[0]=3
        

        # move(y)

        rate.sleep()



if __name__ == '__main__':
    main()


#print('translation {}'.format(pose.translation))
#print('quaternion {}'.format(pose.quaternion))
#print('rotation matrix \n{}'.format(pose.rotation))


#move(y)
#pose_to_tf(br,pose.translation,pose.quaternion)
#from yumipy import YuMiRobot
# starting the robot interface
#y = YuMiRobot()
# getting the current pose of the right end effector
#pose = y.right.get_pose()
# move right arm forward by 5cm using goto_pose
#pose.translation[0] += 0.05
#y.right.goto_pose(pose)
# we should expect to go through the loop 10 times per second

#bridge position 
# #first----------------------
# state_left_b= [-93.54, -61.93, 13.82, 116.15, 83.74, -60.43, 71.23]
# state_right_b= [96.24, -57.9, 10.42, -115.21, 78.56, 54.26, -76.34]

# pose.translation[1] += 0.03
# print(y.left.get_pose(raw_res=False))
# print(y.left.is_pose_reachable(pose))
# y.left.goto_pose(pose, linear=True, relative=False, wait_for_res=True)
# pose.translation[2] += 0.03
# print(y.left.get_pose(raw_res=False))
# print(y.left.is_pose_reachable(pose))
# y.left.goto_pose(pose, linear=True, relative=False, wait_for_res=True)
#exit(0)
