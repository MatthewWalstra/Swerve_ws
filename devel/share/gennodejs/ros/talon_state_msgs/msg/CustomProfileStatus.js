// Auto-generated. Do not edit!

// (in-package talon_state_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CustomProfileStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.running = null;
      this.slotRunning = null;
      this.remainingPoints = null;
      this.remainingTime = null;
      this.outOfPoints = null;
    }
    else {
      if (initObj.hasOwnProperty('running')) {
        this.running = initObj.running
      }
      else {
        this.running = false;
      }
      if (initObj.hasOwnProperty('slotRunning')) {
        this.slotRunning = initObj.slotRunning
      }
      else {
        this.slotRunning = 0;
      }
      if (initObj.hasOwnProperty('remainingPoints')) {
        this.remainingPoints = initObj.remainingPoints
      }
      else {
        this.remainingPoints = [];
      }
      if (initObj.hasOwnProperty('remainingTime')) {
        this.remainingTime = initObj.remainingTime
      }
      else {
        this.remainingTime = 0.0;
      }
      if (initObj.hasOwnProperty('outOfPoints')) {
        this.outOfPoints = initObj.outOfPoints
      }
      else {
        this.outOfPoints = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CustomProfileStatus
    // Serialize message field [running]
    bufferOffset = _serializer.bool(obj.running, buffer, bufferOffset);
    // Serialize message field [slotRunning]
    bufferOffset = _serializer.int32(obj.slotRunning, buffer, bufferOffset);
    // Serialize message field [remainingPoints]
    bufferOffset = _arraySerializer.int32(obj.remainingPoints, buffer, bufferOffset, null);
    // Serialize message field [remainingTime]
    bufferOffset = _serializer.float64(obj.remainingTime, buffer, bufferOffset);
    // Serialize message field [outOfPoints]
    bufferOffset = _serializer.bool(obj.outOfPoints, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CustomProfileStatus
    let len;
    let data = new CustomProfileStatus(null);
    // Deserialize message field [running]
    data.running = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [slotRunning]
    data.slotRunning = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [remainingPoints]
    data.remainingPoints = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [remainingTime]
    data.remainingTime = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [outOfPoints]
    data.outOfPoints = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.remainingPoints.length;
    return length + 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'talon_state_msgs/CustomProfileStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '88d6d29a2f14590c2629fee009ce5b24';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool running
    int32 slotRunning
    int32[] remainingPoints
    float64 remainingTime
    bool outOfPoints
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CustomProfileStatus(null);
    if (msg.running !== undefined) {
      resolved.running = msg.running;
    }
    else {
      resolved.running = false
    }

    if (msg.slotRunning !== undefined) {
      resolved.slotRunning = msg.slotRunning;
    }
    else {
      resolved.slotRunning = 0
    }

    if (msg.remainingPoints !== undefined) {
      resolved.remainingPoints = msg.remainingPoints;
    }
    else {
      resolved.remainingPoints = []
    }

    if (msg.remainingTime !== undefined) {
      resolved.remainingTime = msg.remainingTime;
    }
    else {
      resolved.remainingTime = 0.0
    }

    if (msg.outOfPoints !== undefined) {
      resolved.outOfPoints = msg.outOfPoints;
    }
    else {
      resolved.outOfPoints = false
    }

    return resolved;
    }
};

module.exports = CustomProfileStatus;
