// Auto-generated. Do not edit!

// (in-package first.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class MonthRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Age = null;
    }
    else {
      if (initObj.hasOwnProperty('Age')) {
        this.Age = initObj.Age
      }
      else {
        this.Age = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MonthRequest
    // Serialize message field [Age]
    bufferOffset = _serializer.int64(obj.Age, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MonthRequest
    let len;
    let data = new MonthRequest(null);
    // Deserialize message field [Age]
    data.Age = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'first/MonthRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c292748aa9831817ccbcf68f7d33f1d6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 Age
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MonthRequest(null);
    if (msg.Age !== undefined) {
      resolved.Age = msg.Age;
    }
    else {
      resolved.Age = 0
    }

    return resolved;
    }
};

class MonthResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Message = null;
    }
    else {
      if (initObj.hasOwnProperty('Message')) {
        this.Message = initObj.Message
      }
      else {
        this.Message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MonthResponse
    // Serialize message field [Message]
    bufferOffset = _serializer.string(obj.Message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MonthResponse
    let len;
    let data = new MonthResponse(null);
    // Deserialize message field [Message]
    data.Message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.Message);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'first/MonthResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ce8c0532094f50bab075d6707a3fc45b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string Message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MonthResponse(null);
    if (msg.Message !== undefined) {
      resolved.Message = msg.Message;
    }
    else {
      resolved.Message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: MonthRequest,
  Response: MonthResponse,
  md5sum() { return '1278061dd68c53a50ae17a40e29b2734'; },
  datatype() { return 'first/Month'; }
};
