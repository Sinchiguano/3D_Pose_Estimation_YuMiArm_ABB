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

class RigidTransformPublisherRequest {
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
      this.from_frame = null;
      this.to_frame = null;
      this.mode = null;
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
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RigidTransformPublisherRequest
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
    // Serialize message field [from_frame]
    bufferOffset = _serializer.string(obj.from_frame, buffer, bufferOffset);
    // Serialize message field [to_frame]
    bufferOffset = _serializer.string(obj.to_frame, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.string(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RigidTransformPublisherRequest
    let len;
    let data = new RigidTransformPublisherRequest(null);
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
    // Deserialize message field [from_frame]
    data.from_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [to_frame]
    data.to_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.from_frame.length;
    length += object.to_frame.length;
    length += object.mode.length;
    return length + 68;
  }

  static datatype() {
    // Returns string type for a service object
    return 'autolab_core/RigidTransformPublisherRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2414e9e80f6a0faf446e445b137fbf6c';
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
    string from_frame
    string to_frame
    string mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RigidTransformPublisherRequest(null);
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

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = ''
    }

    return resolved;
    }
};

class RigidTransformPublisherResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RigidTransformPublisherResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RigidTransformPublisherResponse
    let len;
    let data = new RigidTransformPublisherResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'autolab_core/RigidTransformPublisherResponse';
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
    const resolved = new RigidTransformPublisherResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: RigidTransformPublisherRequest,
  Response: RigidTransformPublisherResponse,
  md5sum() { return '2414e9e80f6a0faf446e445b137fbf6c'; },
  datatype() { return 'autolab_core/RigidTransformPublisher'; }
};
