// Auto-generated. Do not edit!

// (in-package yumi_hw.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class YumiGraspRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gripper_id = null;
    }
    else {
      if (initObj.hasOwnProperty('gripper_id')) {
        this.gripper_id = initObj.gripper_id
      }
      else {
        this.gripper_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type YumiGraspRequest
    // Serialize message field [gripper_id]
    bufferOffset = _serializer.uint16(obj.gripper_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type YumiGraspRequest
    let len;
    let data = new YumiGraspRequest(null);
    // Deserialize message field [gripper_id]
    data.gripper_id = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'yumi_hw/YumiGraspRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '26ac3d04102c2e5c0d5e4e1367d0349b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 LEFT_GRIPPER=1
    uint16 RIGHT_GRIPPER=2
    
    uint16 gripper_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new YumiGraspRequest(null);
    if (msg.gripper_id !== undefined) {
      resolved.gripper_id = msg.gripper_id;
    }
    else {
      resolved.gripper_id = 0
    }

    return resolved;
    }
};

// Constants for message
YumiGraspRequest.Constants = {
  LEFT_GRIPPER: 1,
  RIGHT_GRIPPER: 2,
}

class YumiGraspResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type YumiGraspResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type YumiGraspResponse
    let len;
    let data = new YumiGraspResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'yumi_hw/YumiGraspResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new YumiGraspResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: YumiGraspRequest,
  Response: YumiGraspResponse,
  md5sum() { return '26ac3d04102c2e5c0d5e4e1367d0349b'; },
  datatype() { return 'yumi_hw/YumiGrasp'; }
};
