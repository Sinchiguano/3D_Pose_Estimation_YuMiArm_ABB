'''
Util functions for converting
'''
import logging
import numpy as np

METERS_TO_MM = 1000.0
MM_TO_METERS = 1.0 / METERS_TO_MM

from yumi_state import YuMiState
from autolab_core import RigidTransform

def message_to_pose(message, from_frame='yumi'):
    tokens = message.split()
    try:
        if len(tokens) != 7:
            raise Exception("Invalid format for pose! Got:\n{0}".format(message))
        pose_vals = [float(token) for token in tokens]
        q = pose_vals[3:]
        t = pose_vals[:3]
        R = RigidTransform.rotation_from_quaternion(q)
        pose = RigidTransform(R, t, from_frame=from_frame)
        pose.position = pose.position * MM_TO_METERS

        return pose

    except Exception, e:
        logging.error(e)

def message_to_state(message):
    tokens = message.split()

    try:
        if len(tokens) != YuMiState.NUM_JOINTS:
            raise Exception("Invalid format for states! Got: \n{0}".format(message))
        state_vals = [float(token) for token in tokens]
        state = YuMiState(state_vals)

        return state

    except Exception, e:
        logging.error(e)

def message_to_torques(message):
    tokens = message.split()
    torque_vals = np.array([float(token) for token in tokens])

    return torque_vals
