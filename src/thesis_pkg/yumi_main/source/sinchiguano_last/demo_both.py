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
sys.path.insert(0, '/home/casch/yumi_depends_ws/src/thesis_pkg/source/scripts/project')
from thesis_library import *
from yumipy import YuMiRobot
from yumipy import YuMiState,YuMiArm_ROS
from autolab_core import RigidTransform


# #first option
# moves_deg = np.array([[-90.8, -59.74, 17.98, 112.48, 87.42, -61.76, 66.21],
#                         [92.48, -55.08, 15.49, -111.06, 82.59, 55.73, -70.21]])


#second option
moves_deg = np.array([[-78.08, -63.96, 16.69, 109.46, 83.77, -49.04, 58.44],
                        [80.99, -58.45, 15.71, -108.78, 79.71, 46.13, -63.29]])


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
    yumi_robot.left.goto_state(moves[0],wait_for_res=False)
    yumi_robot.right.goto_state(moves[1],wait_for_res=False)
    g_timestamp_last_move = time.time()

def pose_to_tf(br,pose_translation,pose_quaternion):

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

#home position-----------------------
state_left_h=[-59.49, -77.18, 16.56, 112.06, 63.68, -112.18, 66.82]
state_right_h= [59.78, -72.42, 21.53, -112.84, 63.46, -55.3, -67.8]




def main():
    global home_left
    global tool_cesar_cal

    rospy.init_node('tcp_tf', anonymous=True)
    br = tf2_ros.TransformBroadcaster()
    y = YuMiRobot(arm_type='remote')
    listener = tf.TransformListener()

    y.left.set_tool(tool_cesar_cal)
    y.right.set_tool(tool_cesar_cal)

    rate = rospy.Rate(10)


    move(y)

    y.left.close_gripper(no_wait=False, wait_for_res=True)
    y.right.close_gripper(no_wait=False, wait_for_res=True)


    state_robot=False
    temp_flag_left=False
    temp_flag_right=False
    temp_flag=False
    previous_trans=[0.0 , 0.0, 0.0]

    pose_state_left = y.left.get_pose(raw_res=False)
    pose_state_right = y.right.get_pose(raw_res=False)

    y.left.open_gripper(no_wait=False, wait_for_res=True)
    y.right.open_gripper(no_wait=False, wait_for_res=True)

    #exit(0)
    while (not rospy.is_shutdown()):

        print("temp_flag_left:{}".format(temp_flag_left))
        print("temp_flag_right:{}".format(temp_flag_right))
        try:
            (trans,rot) = listener.lookupTransform('/world','/pose_object', rospy.Time(0))
            print('rot:{}'.format(rot))
            print('trans:{}'.format(trans))
            #roll_, pitch_, yaw_=tf.transformations.euler_from_quaternion(rot)
            #print(yaw_)
            if not trans==None and not rot==None and not previous_trans==trans:
                if trans[1]<-0.01:
                    print('right {}'.format(trans[1]))
                    pose_state_right.translation=trans
                    temp_flag_right=True
                    temp_flag_left=False
                else:
                    if trans[1]>0.01:
                        print('left {}'.format(trans[1]))
                        pose_state_left.translation=trans
                        temp_flag_right=False
                        temp_flag_left=True
                move(y)
                previous_trans=trans
        except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
            continue

        if temp_flag_left:
            y.left.goto_pose(pose_state_left, linear=True, relative=False, wait_for_res=True)
            pose_state_left.translation[2]=0.065
            #pose_state_right.translation[1]+=0.065
            y.left.goto_pose(pose_state_left, linear=True, relative=False, wait_for_res=True)
            y.left.close_gripper(force=20,no_wait=False, wait_for_res=True)
            move(y)

            y.left.goto_state(YuMiState(state_left_h),wait_for_res=False)
            y.left.open_gripper(no_wait=False, wait_for_res=True)
            temp_flag_left=False
        else:
            if temp_flag_right:
                y.right.goto_pose(pose_state_right, linear=True, relative=False, wait_for_res=True)
                pose_state_right.translation[2]=0.065
                #pose_state_right.translation[1]+=0.065
                y.right.goto_pose(pose_state_right, linear=True, relative=False, wait_for_res=True)
                y.right.close_gripper(force=20,no_wait=False, wait_for_res=True)
                move(y)

                y.right.goto_state(YuMiState(state_right_h),wait_for_res=False)
                y.right.open_gripper(no_wait=False, wait_for_res=True)
                temp_flag_right=False



        print('moving!!!')
        rate.sleep()

if __name__ == '__main__':
    main()
