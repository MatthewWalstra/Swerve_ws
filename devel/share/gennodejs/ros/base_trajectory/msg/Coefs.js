// Auto-generated. Do not edit!

// (in-package base_trajectory.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Coefs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.spline = null;
    }
    else {
      if (initObj.hasOwnProperty('spline')) {
        this.spline = initObj.spline
      }
      else {
        this.spline = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Coefs
    // Serialize message field [spline]
    bufferOffset = _arraySerializer.float64(obj.spline, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Coefs
    let len;
    let data = new Coefs(null);
    // Deserialize message field [spline]
    data.spline = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.spline.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'base_trajectory/Coefs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '369e2ee5470491d0958d361c6498cf95';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] spline
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Coefs(null);
    if (msg.spline !== undefined) {
      resolved.spline = msg.spline;
    }
    else {
      resolved.spline = []
    }

    return resolved;
    }
};

module.exports = Coefs;
