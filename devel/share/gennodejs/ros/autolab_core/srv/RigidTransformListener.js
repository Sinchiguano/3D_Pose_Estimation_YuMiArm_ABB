// Auto-generated. Do not edit!

// (in-package autolab_core.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RigidTransformListenerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.from_frame = null;
      this.to_frame = null;
    }
    else {
      if (initObj.hasOwnProperty('from_frame')) {
        this.from_frame = initObj.from_frame
      }
      else {
        this.from_frame = '';
      }
      if (initObj.hasOwnProperty('to_frame')) {
        this.to_frame = initObj.to_frame
      }
      else {
        this.to_frame = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RigidTransformListenerRequest
    // Serialize message field [from_frame]
    bufferOffset = _serializer.string(obj.from_frame, buffer, bufferOffset);
    // Serialize message field [to_frame]
    bufferOffset = _serializer.string(obj.to_frame, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RigidTransformListenerRequest
    let len;
    let data = new RigidTransformListenerRequest(null);
    // Deserialize message field [from_frame]
    data.from_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [to_frame]
    data.to_frame = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.from_frame.length;
    length += object.to_frame.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'autolab_core/RigidTransformListenerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '926bcdc77e020fe1b0dab9093941bca3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string from_frame
    string to_frame
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RigidTransformListenerRequest(null);
    if (msg.from_frame !== undefined) {
      resolved.from_frame = msg.from_frame;
    }
    else {
      resolved.from_frame = ''
    }

    if (msg.to_frame !== undefined) {
      resolved.to_frame = msg.to_frame;
    }
    else {
      resolved.to_frame = ''
    }

    return resolved;
    }
};

class RigidTransformListenerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_trans = null;
      this.y_trans = null;
      this.z_trans = null;
      this.w_rot = null;
      this.x_rot = null;
      this.y_rot = null;
      this.z_rot = null;
    }
    else {
      if (initObj.hasOwnProperty('x_trans')) {
        this.x_trans = initObj.x_trans
      }
      else {
        this.x_trans = 0.0;
      }
      if (initObj.hasOwnProperty('y_trans')) {
        this.y_trans = initObj.y_trans
      }
      else {
        this.y_trans = 0.0;
      }
      if (initObj.hasOwnProperty('z_trans')) {
        this.z_trans = initObj.z_trans
      }
      else {
        this.z_trans = 0.0;
      }
      if (initObj.hasOwnProperty('w_rot')) {
        this.w_rot = initObj.w_rot
      }
      else {
        this.w_rot = 0.0;
      }
      if (initObj.hasOwnProperty('x_rot')) {
        this.x_rot = initObj.x_rot
      }
      else {
        this.x_rot = 0.0;
      }
      if (initObj.hasOwnProperty('y_rot')) {
        this.y_rot = initObj.y_rot
      }
      else {
        this.y_rot = 0.0;
      }
      if (initObj.hasOwnProperty('z_rot')) {
        this.z_rot = initObj.z_rot
      }
      else {
        this.z_rot = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RigidTransformListenerResponse
    // Serialize message field [x_trans]
    bufferOffset = _serializer.float64(obj.x_trans, buffer, bufferOffset);
    // Serialize message field [y_trans]
    bufferOffset = _serializer.float64(obj.y_trans, buffer, bufferOffset);
    // Serialize message field [z_trans]
    bufferOffset = _serializer.float64(obj.z_trans, buffer, bufferOffset);
    // Serialize message field [w_rot]
    bufferOffset = _serializer.float64(obj.w_rot, buffer, bufferOffset);
    // Serialize message field [x_rot]
    bufferOffset = _serializer.float64(obj.x_rot, buffer, bufferOffset);
    // Serialize message field [y_rot]
    bufferOffset = _serializer.float64(obj.y_rot, buffer, bufferOffset);
    // Serialize message field [z_rot]
    bufferOffset = _serializer.float64(obj.z_rot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RigidTransformListenerResponse
    let len;
    let data = new RigidTransformListenerResponse(null);
    // Deserialize message field [x_trans]
    data.x_trans = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_trans]
    data.y_trans = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_trans]
    data.z_trans = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [w_rot]
    data.w_rot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x_rot]
    data.x_rot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_rot]
    data.y_rot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_rot]
    data.z_rot = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'autolab_core/RigidTransformListenerResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7ec2b9c75e6b2bdb02f5e916c9af6eaf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x_trans
    float64 y_trans
    float64 z_trans
    float64 w_rot
    float64 x_rot
    float64 y_rot
    float64 z_rot
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RigidTransformListenerResponse(null);
    if (msg.x_trans !== undefined) {
      resolved.x_trans = msg.x_trans;
    }
    else {
      resolved.x_trans = 0.0
    }

    if (msg.y_trans !== undefined) {
      resolved.y_trans = msg.y_trans;
    }
    else {
      resolved.y_trans = 0.0
    }

    if (msg.z_trans !== undefined) {
      resolved.z_trans = msg.z_trans;
    }
    else {
      resolved.z_trans = 0.0
    }

    if (msg.w_rot !== undefined) {
      resolved.w_rot = msg.w_rot;
    }
    else {
      resolved.w_rot = 0.0
    }

    if (msg.x_rot !== undefined) {
      resolved.x_rot = msg.x_rot;
    }
    else {
      resolved.x_rot = 0.0
    }

    if (msg.y_rot !== undefined) {
      resolved.y_rot = msg.y_rot;
    }
    else {
      resolved.y_rot = 0.0
    }

    if (msg.z_rot !== undefined) {
      resolved.z_rot = msg.z_rot;
    }
    else {
      resolved.z_rot = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: RigidTransformListenerRequest,
  Response: RigidTransformListenerResponse,
  md5sum() { return '1b358ad3ddaa046f03b607401db493d6'; },
  datatype() { return 'autolab_core/RigidTransformListener'; }
};
