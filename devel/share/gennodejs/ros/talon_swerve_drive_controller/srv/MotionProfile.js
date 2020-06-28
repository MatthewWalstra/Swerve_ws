// Auto-generated. Do not edit!

// (in-package talon_swerve_drive_controller.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let trajectory_msgs = _finder('trajectory_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MotionProfileRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_trajectory = null;
      this.hold = null;
      this.dt = null;
      this.slot = null;
      this.wipe_all = null;
      this.buffer = null;
      this.run = null;
      this.brake = null;
      this.mode = null;
      this.run_slot = null;
      this.change_queue = null;
      this.new_queue = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_trajectory')) {
        this.joint_trajectory = initObj.joint_trajectory
      }
      else {
        this.joint_trajectory = new trajectory_msgs.msg.JointTrajectory();
      }
      if (initObj.hasOwnProperty('hold')) {
        this.hold = initObj.hold
      }
      else {
        this.hold = [];
      }
      if (initObj.hasOwnProperty('dt')) {
        this.dt = initObj.dt
      }
      else {
        this.dt = 0.0;
      }
      if (initObj.hasOwnProperty('slot')) {
        this.slot = initObj.slot
      }
      else {
        this.slot = 0;
      }
      if (initObj.hasOwnProperty('wipe_all')) {
        this.wipe_all = initObj.wipe_all
      }
      else {
        this.wipe_all = false;
      }
      if (initObj.hasOwnProperty('buffer')) {
        this.buffer = initObj.buffer
      }
      else {
        this.buffer = false;
      }
      if (initObj.hasOwnProperty('run')) {
        this.run = initObj.run
      }
      else {
        this.run = false;
      }
      if (initObj.hasOwnProperty('brake')) {
        this.brake = initObj.brake
      }
      else {
        this.brake = false;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = false;
      }
      if (initObj.hasOwnProperty('run_slot')) {
        this.run_slot = initObj.run_slot
      }
      else {
        this.run_slot = 0;
      }
      if (initObj.hasOwnProperty('change_queue')) {
        this.change_queue = initObj.change_queue
      }
      else {
        this.change_queue = false;
      }
      if (initObj.hasOwnProperty('new_queue')) {
        this.new_queue = initObj.new_queue
      }
      else {
        this.new_queue = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotionProfileRequest
    // Serialize message field [joint_trajectory]
    bufferOffset = trajectory_msgs.msg.JointTrajectory.serialize(obj.joint_trajectory, buffer, bufferOffset);
    // Serialize message field [hold]
    bufferOffset = _arraySerializer.bool(obj.hold, buffer, bufferOffset, null);
    // Serialize message field [dt]
    bufferOffset = _serializer.float64(obj.dt, buffer, bufferOffset);
    // Serialize message field [slot]
    bufferOffset = _serializer.uint32(obj.slot, buffer, bufferOffset);
    // Serialize message field [wipe_all]
    bufferOffset = _serializer.bool(obj.wipe_all, buffer, bufferOffset);
    // Serialize message field [buffer]
    bufferOffset = _serializer.bool(obj.buffer, buffer, bufferOffset);
    // Serialize message field [run]
    bufferOffset = _serializer.bool(obj.run, buffer, bufferOffset);
    // Serialize message field [brake]
    bufferOffset = _serializer.bool(obj.brake, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.bool(obj.mode, buffer, bufferOffset);
    // Serialize message field [run_slot]
    bufferOffset = _serializer.uint8(obj.run_slot, buffer, bufferOffset);
    // Serialize message field [change_queue]
    bufferOffset = _serializer.bool(obj.change_queue, buffer, bufferOffset);
    // Serialize message field [new_queue]
    bufferOffset = _arraySerializer.uint8(obj.new_queue, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotionProfileRequest
    let len;
    let data = new MotionProfileRequest(null);
    // Deserialize message field [joint_trajectory]
    data.joint_trajectory = trajectory_msgs.msg.JointTrajectory.deserialize(buffer, bufferOffset);
    // Deserialize message field [hold]
    data.hold = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [dt]
    data.dt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [slot]
    data.slot = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [wipe_all]
    data.wipe_all = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [buffer]
    data.buffer = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [run]
    data.run = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [brake]
    data.brake = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [run_slot]
    data.run_slot = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [change_queue]
    data.change_queue = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [new_queue]
    data.new_queue = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += trajectory_msgs.msg.JointTrajectory.getMessageSize(object.joint_trajectory);
    length += object.hold.length;
    length += object.new_queue.length;
    return length + 27;
  }

  static datatype() {
    // Returns string type for a service object
    return 'talon_swerve_drive_controller/MotionProfileRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '823f7df5a442d751c5c3d88388259334';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    trajectory_msgs/JointTrajectory joint_trajectory
    bool[]  hold
    float64 dt
    uint32  slot
    bool    wipe_all
    bool    buffer
    bool    run
    bool    brake
    bool    mode
    uint8   run_slot
    bool    change_queue
    uint8[] new_queue
    
    ================================================================================
    MSG: trajectory_msgs/JointTrajectory
    Header header
    string[] joint_names
    JointTrajectoryPoint[] points
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: trajectory_msgs/JointTrajectoryPoint
    # Each trajectory point specifies either positions[, velocities[, accelerations]]
    # or positions[, effort] for the trajectory to be executed.
    # All specified values are in the same order as the joint names in JointTrajectory.msg
    
    float64[] positions
    float64[] velocities
    float64[] accelerations
    float64[] effort
    duration time_from_start
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotionProfileRequest(null);
    if (msg.joint_trajectory !== undefined) {
      resolved.joint_trajectory = trajectory_msgs.msg.JointTrajectory.Resolve(msg.joint_trajectory)
    }
    else {
      resolved.joint_trajectory = new trajectory_msgs.msg.JointTrajectory()
    }

    if (msg.hold !== undefined) {
      resolved.hold = msg.hold;
    }
    else {
      resolved.hold = []
    }

    if (msg.dt !== undefined) {
      resolved.dt = msg.dt;
    }
    else {
      resolved.dt = 0.0
    }

    if (msg.slot !== undefined) {
      resolved.slot = msg.slot;
    }
    else {
      resolved.slot = 0
    }

    if (msg.wipe_all !== undefined) {
      resolved.wipe_all = msg.wipe_all;
    }
    else {
      resolved.wipe_all = false
    }

    if (msg.buffer !== undefined) {
      resolved.buffer = msg.buffer;
    }
    else {
      resolved.buffer = false
    }

    if (msg.run !== undefined) {
      resolved.run = msg.run;
    }
    else {
      resolved.run = false
    }

    if (msg.brake !== undefined) {
      resolved.brake = msg.brake;
    }
    else {
      resolved.brake = false
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = false
    }

    if (msg.run_slot !== undefined) {
      resolved.run_slot = msg.run_slot;
    }
    else {
      resolved.run_slot = 0
    }

    if (msg.change_queue !== undefined) {
      resolved.change_queue = msg.change_queue;
    }
    else {
      resolved.change_queue = false
    }

    if (msg.new_queue !== undefined) {
      resolved.new_queue = msg.new_queue;
    }
    else {
      resolved.new_queue = []
    }

    return resolved;
    }
};

class MotionProfileResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotionProfileResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotionProfileResponse
    let len;
    let data = new MotionProfileResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'talon_swerve_drive_controller/MotionProfileResponse';
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
    const resolved = new MotionProfileResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: MotionProfileRequest,
  Response: MotionProfileResponse,
  md5sum() { return '823f7df5a442d751c5c3d88388259334'; },
  datatype() { return 'talon_swerve_drive_controller/MotionProfile'; }
};
