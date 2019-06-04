// Auto-generated. Do not edit!

// (in-package yumipy.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ROSYumiArmRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.func = null;
      this.args = null;
      this.kwargs = null;
    }
    else {
      if (initObj.hasOwnProperty('func')) {
        this.func = initObj.func
      }
      else {
        this.func = '';
      }
      if (initObj.hasOwnProperty('args')) {
        this.args = initObj.args
      }
      else {
        this.args = '';
      }
      if (initObj.hasOwnProperty('kwargs')) {
        this.kwargs = initObj.kwargs
      }
      else {
        this.kwargs = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ROSYumiArmRequest
    // Serialize message field [func]
    bufferOffset = _serializer.string(obj.func, buffer, bufferOffset);
    // Serialize message field [args]
    bufferOffset = _serializer.string(obj.args, buffer, bufferOffset);
    // Serialize message field [kwargs]
    bufferOffset = _serializer.string(obj.kwargs, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ROSYumiArmRequest
    let len;
    let data = new ROSYumiArmRequest(null);
    // Deserialize message field [func]
    data.func = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [args]
    data.args = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [kwargs]
    data.kwargs = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.func.length;
    length += object.args.length;
    length += object.kwargs.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'yumipy/ROSYumiArmRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '31cc66bd1f2473b7ca0f1a269a335554';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string func
    string args
    string kwargs
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ROSYumiArmRequest(null);
    if (msg.func !== undefined) {
      resolved.func = msg.func;
    }
    else {
      resolved.func = ''
    }

    if (msg.args !== undefined) {
      resolved.args = msg.args;
    }
    else {
      resolved.args = ''
    }

    if (msg.kwargs !== undefined) {
      resolved.kwargs = msg.kwargs;
    }
    else {
      resolved.kwargs = ''
    }

    return resolved;
    }
};

class ROSYumiArmResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ret = null;
    }
    else {
      if (initObj.hasOwnProperty('ret')) {
        this.ret = initObj.ret
      }
      else {
        this.ret = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ROSYumiArmResponse
    // Serialize message field [ret]
    bufferOffset = _serializer.string(obj.ret, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ROSYumiArmResponse
    let len;
    let data = new ROSYumiArmResponse(null);
    // Deserialize message field [ret]
    data.ret = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ret.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'yumipy/ROSYumiArmResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c7030931189f40243cd08ed0e4c0bac7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string ret
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ROSYumiArmResponse(null);
    if (msg.ret !== undefined) {
      resolved.ret = msg.ret;
    }
    else {
      resolved.ret = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ROSYumiArmRequest,
  Response: ROSYumiArmResponse,
  md5sum() { return 'a5f31b322bc70c99cdf226b9d88321e7'; },
  datatype() { return 'yumipy/ROSYumiArm'; }
};
