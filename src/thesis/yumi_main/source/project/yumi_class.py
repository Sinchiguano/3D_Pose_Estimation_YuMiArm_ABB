#!/usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.

"""

"""
from yumi_lib import *

class MoveGroup(object):
    """MoveGroup_Python"""
    def __init__(self,temp,pubname=None):
        ## First initialize `moveit_commander`_ and a `rospy`_ node:
        moveit_commander.roscpp_initialize(sys.argv)
        rospy.init_node('move_group_python', anonymous=True)

        ## Instantiate a `RobotCommander`_ object. Provides information such as the robot's
        ## kinematic model and the robot's current joint states
        robot = moveit_commander.RobotCommander()

        ## Instantiate a `PlanningSceneInterface`_ object.  This provides a remote interface
        ## for getting, setting, and updating the robot's internal understanding of the
        ## surrounding world:
        scene = moveit_commander.PlanningSceneInterface()

        ## Instantiate a `MoveGroupCommander`_ object.  This object is an interface
        ## to a planning group (group of joints).  In this tutorial the group is any of the both robotics arms
        ## of the yumi collaborative robot so we set the group's name to "left_arm or right_arm".
        ## If you are using a different robot, change this value to the name of your robot
        ## arm planning group.
        ## This interface can be used to plan and execute motions:
        group_name = temp
        move_group = moveit_commander.MoveGroupCommander(group_name)

        ## Create a `DisplayTrajectory`_ ROS publisher which is used to display
        ## trajectories in Rviz:
        # display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path',
        #                                                moveit_msgs.msg.DisplayTrajectory,
        #                                                queue_size=20)

        ## Getting Basic Information
        # We can get the name of the reference frame for the yumi robot:
        planning_frame = move_group.get_planning_frame()
        #print "============ Planning frame: %s" % planning_frame

        # We can also print the name of the end-effector link for each one of the robot arm group:
        eef_link = move_group.get_end_effector_link()
        #print "============ End effector link: %s" % eef_link

        # We can get a list of all the groups in the robot:
        group_names = robot.get_group_names()
        #print "============ Available Planning Groups:", robot.get_group_names()

        # Sometimes for debugging it is useful to print the entire state of the
        # robot:
        # print "============ Printing robot state"
        # print robot.get_current_state()
        # print ""
        #
        # print('--------------------------------------------')
        # ''''Get the current pose of the end-effector of the group.'''
        # print(move_group.get_current_pose().pose)

        # subscribe topics
        # self.sub_odom = rospy.Subscriber('/robot1/odom', Odometry, self.odom_callback)

        # publish topics
        """Set gripper effort
        Sends an effort command to the selected gripper. Should be in the range of
        -20.0 (fully open) to 20.0 (fully closed)
        """
        self.pub_gripper = rospy.Publisher(pubname, std_msgs.msg.Float64, queue_size=10, latch=True)
        # Misc variables
        self.robot = robot
        self.scene = scene
        self.move_group = move_group
        #self.display_trajectory_publisher = display_trajectory_publisher
        self.planning_frame = planning_frame
        self.eef_link = eef_link
        self.group_names = group_names
        self.name_arm=group_name
        self.tag_name=temp#ok

    def go_to_joint_state(self,joint_home=None):
        # Copy class variables to local variables to make the web tutorials more clear.
        # In practice, you should use the class variables directly unless you have a good
        # reason not to.
        move_group = self.move_group

        # Planning to a Pose goal for the end-effector:
        # We can sample a random pose values from the Moveit API for any of the robot_arm group or
        # we can pass a desired pose goal as parameter of this function:
        if joint_home:
            print('default joint values-->> home!!!')
            joint_goal=joint_home
        else:
            print('random joint values ---->>>  ')
            joint_goal=move_group.get_random_joint_values()


        #plan to the new joint space goal and visualize the plan
        move_group.set_joint_value_target(joint_goal)

        plan1 = move_group.plan()

        # The go command can be called with joint values, poses, or without any
        # parameters if you have already set the pose or joint target for the group


        print "\n============ Enter #1 to execute or any number to skip the plan!"
        temp=raw_input()
        control_signal=int(temp)

        if control_signal==1:
            #Uncomment below line when working with a real robot
            move_group.go(wait=True)


        # Uncomment below line when working with a real robot
        #move_group.go(wait=True)

        # Calling ``stop()`` ensures that there is no residual movement
        move_group.stop()

        # For testing:
        current_joints = move_group.get_current_joint_values()

        success=all_close(joint_goal, current_joints, 0.01)

        print
        print('Success! '+self.tag_name,success)
        print('-  -  -  -  -  -  -  -  -  -  -  -')
        print

        return success

    def go_to_pose_goal(self,pose_ee=None):
        # Copy class variables to local variables to make the web tutorials more clear.
        # In practice, you should use the class variables directly unless you have a good
        # reason not to.
        move_group = self.move_group

        ## Planning to a Pose goal for the end-effector:
        # We can sample a random pose values from the Moveit API for any of the robot_arm group or
        # we can pass a desired pose goal as parameter of this function:
        if pose_ee:
            print('pose goal!!!')
            pose_target=self.create_pose(pose_ee)
            print(pose_target)
        else:
            print('random pose goal ')
            pose_goal=move_group.get_random_pose(end_effector_link = self.eef_link)
            pose_target=pose_goal.pose

        move_group.set_pose_target(pose_target)

        #Now, we call the planner to compute the plan. Note that we are just planning,
        #not asking move_group to actually move the robot
        plan2 = move_group.plan()


        print "\n============ Enter #1 to execute or any number to skip the execution!"
        temp=raw_input()
        control_signal=int(temp)

        if control_signal==1:
            # Uncomment below line when working with a real robot
            ## Now, we call the planner to execute it.
            move_group.go(wait=True)

        # Calling `stop()` ensures that there is no residual movement
        move_group.stop()
        # It is always good to clear your targets after planning with poses.
        # Note: there is no equivalent function for clear_joint_value_targets()
        move_group.clear_pose_targets()

        # For testing:
        current_pose = move_group.get_current_pose().pose

        success=all_close(pose_target, current_pose, 0.03)

        print()
        print('Success! '+self.tag_name,success)
        print "\n============ Press `Enter` to open the gripperL ..."
        raw_input()
        yumiR.pub_gripper.publish(std_msgs.msg.Float64(-5))
        rospy.sleep(1)
        print('-  -  -  -  -  -  -  -  -  -  -  -')
        print

        return success

    def plan_cartesian_path(self, scale=1):
        # Copy class variables to local variables to make the web tutorials more clear.
        # In practice, you should use the class variables directly unless you have a good
        # reason not to.
        move_group = self.move_group

        ## Cartesian Paths
        ## You can plan a Cartesian path directly by specifying a list of waypoints
        ## for the end-effector to go through. If executing  interactively in a
        ## Python shell, set scale = 1.0.
        ##
        waypoints = list()

        wpose = move_group.get_current_pose().pose
        wpose.position.z -= scale * 0.1  # First move up (z)
        wpose.position.y += scale * 0.2  # and sideways (y)
        waypoints.append(copy.deepcopy(wpose))

        wpose.position.x += scale * 0.1  # Second move forward/backwards in (x)
        waypoints.append(copy.deepcopy(wpose))

        wpose.position.y -= scale * 0.1  # Third move sideways (y)
        waypoints.append(copy.deepcopy(wpose))

        # We want the Cartesian path to be interpolated at a resolution of 1 cm
        # which is why we will specify 0.01 as the eef_step in Cartesian
        # translation.  We will disable the jump threshold by setting it to 0.0,
        # ignoring the check for infeasible jumps in joint space, which is sufficient
        # for this tutorial.
        (plan3, fraction) = move_group.compute_cartesian_path(
                                           waypoints,   # waypoints to follow
                                           0.01,        # eef_step
                                           0.0)         # jump_threshold

        # print "\n============ Enter #1 to execute or any number to skip the plan!"
        # temp=raw_input()
        # control_signal=int(temp)
        #
        # if control_signal==1:
        #     ## Now, we call the planner to compute the plan and execute it.
        #     ## we command the robot to execute the movement!!!
        #     move_group.execute(plan3, wait=True)

        move_group.execute(wait=True)

    def create_pose(self,tmp_pose):
        """Creates a pose using quaternions
        Creates a pose for use with MoveIt! using XYZ coordinates and XYZW
        quaternion values
        """
        print('hi')
        pose_target = geometry_msgs.msg.Pose()

        pose_target.position.x = tmp_pose[0]
        pose_target.position.y = tmp_pose[1]
        pose_target.position.z = tmp_pose[2]

        quaternion = tf.transformations.quaternion_from_euler(tmp_pose[3],tmp_pose[4],tmp_pose[5])
        pose_target.orientation.x =quaternion[0]
        pose_target.orientation.y =quaternion[1]
        pose_target.orientation.z =quaternion[2]
        pose_target.orientation.w =quaternion[3]

        return pose_target



def all_close(goal, actual, tolerance):
    """
    Convenience method for testing if a list of values are within a tolerance of their counterparts in another list
    @param: goal       A list of floats, a Pose or a PoseStamped
    @param: actual     A list of floats, a Pose or a PoseStamped
    @param: tolerance  A float
    @returns: bool
    """
    all_equal = True
    if type(goal) is list:
        for index in range(len(goal)):
            if abs(actual[index] - goal[index]) > tolerance:
                return False

    elif type(goal) is geometry_msgs.msg.PoseStamped:
        return all_close(goal.pose, actual.pose, tolerance)

    elif type(goal) is geometry_msgs.msg.Pose:
        return all_close(pose_to_list(goal), pose_to_list(actual), tolerance)

    return True

def measurements(arm_name):

    print('///====================================================')
    print('current joints values '+arm_name.tag_name)
    print(arm_name.move_group.get_current_joint_values())
    # # ''''Get the current pose of the end-effector of the group.'''
    print
    # print('current pose of the end-effector '+arm_name.tag_name)
    # print(arm_name.move_group.get_current_pose().pose)

    # print('Position x, y and z!!!')
    # temP=arm_name.move_group.get_current_pose().pose
    # print(temP.position.x,temP.position.y,temP.position.z)
    # print
    # print('Rotation in Euler convention (rpy)!!!')
    # print(arm_name.move_group.get_current_rpy())
    # print
    # print('Rotation in quaternion convention (x,y,z,w)!!!')
    # temP=arm_name.move_group.get_current_pose().pose
    # quaternion = (temP.orientation.x,temP.orientation.y,temP.orientation.z,temP.orientation.w)
    # print(quaternion)
    # print('')
