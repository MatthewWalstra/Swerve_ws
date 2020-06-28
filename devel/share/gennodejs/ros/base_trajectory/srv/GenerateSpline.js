// Auto-generated. Do not edit!

// (in-package base_trajectory.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let trajectory_msgs = _finder('trajectory_msgs');

//-----------------------------------------------------------

let Coefs = require('../msg/Coefs.js');
let nav_msgs = _finder('nav_msgs');

//-----------------------------------------------------------

class GenerateSplineRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.points = null;
    }
    else {
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GenerateSplineRequest
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = trajectory_msgs.msg.JointTrajectoryPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GenerateSplineRequest
    let len;
    let data = new GenerateSplineRequest(null);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = trajectory_msgs.msg.JointTrajectoryPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.points.forEach((val) => {
      length += trajectory_msgs.msg.JointTrajectoryPoint.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'base_trajectory/GenerateSplineRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cbcffe0108b8e28a6a17e35f91e89d9f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    trajectory_msgs/JointTrajectoryPoint[] points
    
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
    const resolved = new GenerateSplineRequest(null);
    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = trajectory_msgs.msg.JointTrajectoryPoint.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    return resolved;
    }
};

class GenerateSplineResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.orient_coefs = null;
      this.x_coefs = null;
      this.y_coefs = null;
      this.end_points = null;
      this.path = null;
    }
    else {
      if (initObj.hasOwnProperty('orient_coefs')) {
        this.orient_coefs = initObj.orient_coefs
      }
      else {
        this.orient_coefs = [];
      }
      if (initObj.hasOwnProperty('x_coefs')) {
        this.x_coefs = initObj.x_coefs
      }
      else {
        this.x_coefs = [];
      }
      if (initObj.hasOwnProperty('y_coefs')) {
        this.y_coefs = initObj.y_coefs
      }
      else {
        this.y_coefs = [];
      }
      if (initObj.hasOwnProperty('end_points')) {
        this.end_points = initObj.end_points
      }
      else {
        this.end_points = [];
      }
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = new nav_msgs.msg.Path();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GenerateSplineResponse
    // Serialize message field [orient_coefs]
    // Serialize the length for message field [orient_coefs]
    bufferOffset = _serializer.uint32(obj.orient_coefs.length, buffer, bufferOffset);
    obj.orient_coefs.forEach((val) => {
      bufferOffset = Coefs.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [x_coefs]
    // Serialize the length for message field [x_coefs]
    bufferOffset = _serializer.uint32(obj.x_coefs.length, buffer, bufferOffset);
    obj.x_coefs.forEach((val) => {
      bufferOffset = Coefs.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [y_coefs]
    // Serialize the length for message field [y_coefs]
    bufferOffset = _serializer.uint32(obj.y_coefs.length, buffer, bufferOffset);
    obj.y_coefs.forEach((val) => {
      bufferOffset = Coefs.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [end_points]
    bufferOffset = _arraySerializer.float64(obj.end_points, buffer, bufferOffset, null);
    // Serialize message field [path]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GenerateSplineResponse
    let len;
    let data = new GenerateSplineResponse(null);
    // Deserialize message field [orient_coefs]
    // Deserialize array length for message field [orient_coefs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.orient_coefs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.orient_coefs[i] = Coefs.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [x_coefs]
    // Deserialize array length for message field [x_coefs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.x_coefs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.x_coefs[i] = Coefs.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [y_coefs]
    // Deserialize array length for message field [y_coefs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.y_coefs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.y_coefs[i] = Coefs.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [end_points]
    data.end_points = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [path]
    data.path = nav_msgs.msg.Path.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.orient_coefs.forEach((val) => {
      length += Coefs.getMessageSize(val);
    });
    object.x_coefs.forEach((val) => {
      length += Coefs.getMessageSize(val);
    });
    object.y_coefs.forEach((val) => {
      length += Coefs.getMessageSize(val);
    });
    length += 8 * object.end_points.length;
    length += nav_msgs.msg.Path.getMessageSize(object.path);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'base_trajectory/GenerateSplineResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ab80e90a7dcd87ed3afa60a58da4a0c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Coefs[] orient_coefs
    Coefs[] x_coefs
    Coefs[] y_coefs
    float64[] end_points
    nav_msgs/Path path
    
    
    ================================================================================
    MSG: base_trajectory/Coefs
    float64[] spline
    
    ================================================================================
    MSG: nav_msgs/Path
    #An array of poses that represents a Path for a robot to follow
    Header header
    geometry_msgs/PoseStamped[] poses
    
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
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GenerateSplineResponse(null);
    if (msg.orient_coefs !== undefined) {
      resolved.orient_coefs = new Array(msg.orient_coefs.length);
      for (let i = 0; i < resolved.orient_coefs.length; ++i) {
        resolved.orient_coefs[i] = Coefs.Resolve(msg.orient_coefs[i]);
      }
    }
    else {
      resolved.orient_coefs = []
    }

    if (msg.x_coefs !== undefined) {
      resolved.x_coefs = new Array(msg.x_coefs.length);
      for (let i = 0; i < resolved.x_coefs.length; ++i) {
        resolved.x_coefs[i] = Coefs.Resolve(msg.x_coefs[i]);
      }
    }
    else {
      resolved.x_coefs = []
    }

    if (msg.y_coefs !== undefined) {
      resolved.y_coefs = new Array(msg.y_coefs.length);
      for (let i = 0; i < resolved.y_coefs.length; ++i) {
        resolved.y_coefs[i] = Coefs.Resolve(msg.y_coefs[i]);
      }
    }
    else {
      resolved.y_coefs = []
    }

    if (msg.end_points !== undefined) {
      resolved.end_points = msg.end_points;
    }
    else {
      resolved.end_points = []
    }

    if (msg.path !== undefined) {
      resolved.path = nav_msgs.msg.Path.Resolve(msg.path)
    }
    else {
      resolved.path = new nav_msgs.msg.Path()
    }

    return resolved;
    }
};

module.exports = {
  Request: GenerateSplineRequest,
  Response: GenerateSplineResponse,
  md5sum() { return '2e897a151cd8c4aa6aeb509b833d8007'; },
  datatype() { return 'base_trajectory/GenerateSpline'; }
};
