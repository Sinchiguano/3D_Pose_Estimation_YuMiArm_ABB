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
sys.path.insert(0, '/home/casch/yumi_depends_ws/src/thesis_pkg/yumi_main/scripts/project')
from thesis_library import *
from yumipy import YuMiRobot
from yumipy import YuMiState,YuMiArm_ROS
from autolab_core import RigidTransform


# #second movement
moves_deg = np.array([[-91.98, -44.15, 21.6, 111.06, 71.47, -69.94, 87.21]])
qtn_temp= [-0.03201502 , 0.99946886, -0.00600282, -0.00100047]




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

home_industrial_obj=[-104.07, -71.35, -36.44, 132.22, 84.2, -87.31, 42.0]


def main():
    global home_left
    global tool_cesar_cal

    rospy.init_node('tcp_tf', anonymous=True)
    br = tf2_ros.TransformBroadcaster()
    y = YuMiRobot(arm_type='remote')
    listener = tf.TransformListener()
    y.left.set_tool(tool_cesar_cal)

    rate = rospy.Rate(10)


    move(y)

    y.left.open_gripper(no_wait=False, wait_for_res=True)
    pose_state = y.left.get_pose(raw_res=False)
    y.left.close_gripper(no_wait=False, wait_for_res=True)

    state_robot=False
    temp_flag=False
    previous_trans=[0.0 , 0.0, 0.0]
    while (not rospy.is_shutdown()):

        print("flag:{}".format(temp_flag))
        try:
            (trans,rot) = listener.lookupTransform('/world','/pose_object', rospy.Time(0))
            from tf.transformations import euler_from_quaternion, quaternion_from_euler
            ###########  TEST#####################
            print('pose_state.quaternion:{}'.format(pose_state.quaternion))
            print('pose_state.rotation:{}'.format(pose_state.rotation))
            tmp=pose_state.quaternion
            print('tmp',tmp)
            orientation_list = [tmp[1],tmp[2],tmp[3],tmp[0]]
            (roll_default, pitch_default, yaw_default)=tf.transformations.euler_from_quaternion(orientation_list)
            print("euler_angles:{}".format([math.degrees(roll_default),math.degrees(pitch_default),math.degrees(yaw_default)]))

            roll_, pitch_, yaw_=tf.transformations.euler_from_quaternion(rot)
            print('cesar:{}{}{}'.format(roll_, pitch_, yaw_))
            euler_angles=[math.degrees(roll_),math.degrees(pitch_),math.degrees(yaw_)]
            print('euler_angles:{}'.format(euler_angles))

            print('---New computation about quaternions---')
            q_orig = tf.transformations.quaternion_from_euler(roll_default,pitch_default,yaw_default)
            q_rot = quaternion_from_euler(0, 0, yaw_)
            q_new = quaternion_multiply(q_rot, q_orig)
            q_new/=np.linalg.norm(q_new)
            r_new = quaternion_matrix(q_new)

            print('r_new:',r_new)
            print(type(r_new))
            print(r_new[:-1,:-1])
            # pose_state.quaternion[0]=q_new[3]
            # pose_state.quaternion[1]=q_new[0]
            # pose_state.quaternion[2]=q_new[1]
            # pose_state.quaternion[3]=q_new[2]
            pose_state.translation=trans
            pose_state.rotation=r_new[:-1,:-1]

            state_robot=y.left.goto_pose(pose_state, linear=True, relative=False, wait_for_res=True)
            print('state_robot:{}'.format(state_robot))
            exit(0)

            ################END TEST########################
            if not trans==None and not rot==None and not previous_trans==trans:
                pose_state.translation=trans
                
                temp_flag=y.left.is_pose_reachable(pose_state)
                move(y)
                previous_trans=trans
                print("It is feasible to reach the given pose {}".format(temp_flag))
        except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
            continue

        if temp_flag:
            state_robot=y.left.goto_pose(pose_state, linear=True, relative=False, wait_for_res=True)
            y.left.open_gripper(no_wait=False, wait_for_res=True)
            pose_state.translation[2]=0.065
            state_robot=y.left.goto_pose(pose_state, linear=True, relative=False, wait_for_res=True)
            y.left.close_gripper(force=20,no_wait=False, wait_for_res=True)
            move(y)
            y.left.goto_state(YuMiState(home_industrial_obj),wait_for_res=False)
            y.left.open_gripper(no_wait=False, wait_for_res=True)
            temp_flag=False


        print('moving!!!')
        rate.sleep()

if __name__ == '__main__':
    main()
