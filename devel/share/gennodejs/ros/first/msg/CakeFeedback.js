// Auto-generated. Do not edit!

// (in-package first.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CakeFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cake_baked = null;
    }
    else {
      if (initObj.hasOwnProperty('cake_baked')) {
        this.cake_baked = initObj.cake_baked
      }
      else {
        this.cake_baked = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CakeFeedback
    // Serialize message field [cake_baked]
    bufferOffset = _serializer.int64(obj.cake_baked, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CakeFeedback
    let len;
    let data = new CakeFeedback(null);
    // Deserialize message field [cake_baked]
    data.cake_baked = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'first/CakeFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd07d0961a6435407e0940bb5c723c2f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    int64 cake_baked
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CakeFeedback(null);
    if (msg.cake_baked !== undefined) {
      resolved.cake_baked = msg.cake_baked;
    }
    else {
      resolved.cake_baked = 0
    }

    return resolved;
    }
};

module.exports = CakeFeedback;
