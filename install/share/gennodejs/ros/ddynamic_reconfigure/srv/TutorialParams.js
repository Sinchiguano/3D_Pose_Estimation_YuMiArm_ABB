// Auto-generated. Do not edit!

// (in-package ddynamic_reconfigure.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class TutorialParamsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TutorialParamsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TutorialParamsRequest
    let len;
    let data = new TutorialParamsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ddynamic_reconfigure/TutorialParamsRequest';
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
    const resolved = new TutorialParamsRequest(null);
    return resolved;
    }
};

class TutorialParamsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.int_param = null;
      this.double_param = null;
      this.str_param = null;
      this.bool_param = null;
      this.enum_param = null;
    }
    else {
      if (initObj.hasOwnProperty('int_param')) {
        this.int_param = initObj.int_param
      }
      else {
        this.int_param = 0;
      }
      if (initObj.hasOwnProperty('double_param')) {
        this.double_param = initObj.double_param
      }
      else {
        this.double_param = 0.0;
      }
      if (initObj.hasOwnProperty('str_param')) {
        this.str_param = initObj.str_param
      }
      else {
        this.str_param = '';
      }
      if (initObj.hasOwnProperty('bool_param')) {
        this.bool_param = initObj.bool_param
      }
      else {
        this.bool_param = false;
      }
      if (initObj.hasOwnProperty('enum_param')) {
        this.enum_param = initObj.enum_param
      }
      else {
        this.enum_param = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TutorialParamsResponse
    // Serialize message field [int_param]
    bufferOffset = _serializer.int32(obj.int_param, buffer, bufferOffset);
    // Serialize message field [double_param]
    bufferOffset = _serializer.float64(obj.double_param, buffer, bufferOffset);
    // Serialize message field [str_param]
    bufferOffset = _serializer.string(obj.str_param, buffer, bufferOffset);
    // Serialize message field [bool_param]
    bufferOffset = _serializer.bool(obj.bool_param, buffer, bufferOffset);
    // Serialize message field [enum_param]
    bufferOffset = _serializer.int32(obj.enum_param, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TutorialParamsResponse
    let len;
    let data = new TutorialParamsResponse(null);
    // Deserialize message field [int_param]
    data.int_param = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [double_param]
    data.double_param = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [str_param]
    data.str_param = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [bool_param]
    data.bool_param = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enum_param]
    data.enum_param = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.str_param.length;
    return length + 21;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ddynamic_reconfigure/TutorialParamsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2b2d98973833896677e387258d00296b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 int_param
    float64 double_param
    string str_param
    bool bool_param
    int32 enum_param
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TutorialParamsResponse(null);
    if (msg.int_param !== undefined) {
      resolved.int_param = msg.int_param;
    }
    else {
      resolved.int_param = 0
    }

    if (msg.double_param !== undefined) {
      resolved.double_param = msg.double_param;
    }
    else {
      resolved.double_param = 0.0
    }

    if (msg.str_param !== undefined) {
      resolved.str_param = msg.str_param;
    }
    else {
      resolved.str_param = ''
    }

    if (msg.bool_param !== undefined) {
      resolved.bool_param = msg.bool_param;
    }
    else {
      resolved.bool_param = false
    }

    if (msg.enum_param !== undefined) {
      resolved.enum_param = msg.enum_param;
    }
    else {
      resolved.enum_param = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: TutorialParamsRequest,
  Response: TutorialParamsResponse,
  md5sum() { return '2b2d98973833896677e387258d00296b'; },
  datatype() { return 'ddynamic_reconfigure/TutorialParams'; }
};
