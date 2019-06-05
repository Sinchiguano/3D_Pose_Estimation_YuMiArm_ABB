#!/usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2018 Cesar Sinchiguano <cesarsinchiguano@hotmail.es>
#
# Distributed under terms of the BSD license.
#!/usr/bin/env python
import roslib
import rospy
import math
import tf
import geometry_msgs.msg
import sys
sys.path.insert(0, '/home/casch/yumi_depends_ws/src/thesis_pkg/yumi_main/source/project')
from thesis_library import *


def publish_transforms(tmp1,tmp2,tmp3,aux1,aux2,aux3,aux4):

    br = tf2_ros.TransformBroadcaster()

    t10 = geometry_msgs.msg.TransformStamped()
    t10.header.stamp = rospy.Time.now()
    t10.header.frame_id = "world"
    t10.child_frame_id = "camera_link2"
    t10.transform.translation.x = tmp1
    t10.transform.translation.y = tmp2
    t10.transform.translation.z = tmp3

    t10.transform.rotation.x = aux1
    t10.transform.rotation.y = aux2
    t10.transform.rotation.z = aux3
    t10.transform.rotation.w = aux4
    br.sendTransform(t10)

if __name__ == '__main__':

    rospy.init_node('cam_tf_listener')

    listener = tf.TransformListener()

    rate = rospy.Rate(10.0)
    counter=1
    translation_mean=list()
    rotation_mean=list()
    while not rospy.is_shutdown():
        try:
            (trans1,rot1) = listener.lookupTransform('/world','/camera_link', rospy.Time(0))
            #(trans1,rot1) = listener.lookupTransform('/camera_link','/world', rospy.Time(0))
            if not trans1==None and not rot1==None:
                translation_mean.append(trans1)
                rotation_mean.append(rot1)
                counter+=1
        except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
            continue
        tmp=np.mean(translation_mean,axis=0)
        aux=np.mean(rotation_mean,axis=0)
        print('------------------------------------')
        print('Translation mean : \n{}'.format(tmp))
        print()
        print('Rotation mean : \n{}'.format(aux))
        print()
        print('Current values')
        print(trans1)
        print(rot1)

        
        # Correction of my transform in order to have in openCV convention
        q_corre = tf.transformations.quaternion_from_euler(math.pi/2,-math.pi/2,0)
        q_corre[3]=-q_corre[3]
        q_camera = Quaternion(aux[0],aux[1],aux[2],aux[3])
        q2=quaternion_multiply(q_camera,q_corre)
        print('Quaternion in openCV Convention: \n {}'.format(q2))
        Rq = quaternion_matrix(q2)
        print('Rotation in openCV Convention: \n {}'.format(Rq))

        print('-----------------------------------')


        #print(tmp[0],tmp[1],tmp[2])
        publish_transforms(tmp[0],tmp[1],tmp[2],aux[0],aux[1],aux[2],aux[3])
        rate.sleep()
