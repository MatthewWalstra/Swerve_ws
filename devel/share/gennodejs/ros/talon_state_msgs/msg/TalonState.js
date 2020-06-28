// Auto-generated. Do not edit!

// (in-package talon_state_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CustomProfileStatus = require('./CustomProfileStatus.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TalonState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.name = null;
      this.talon_mode = null;
      this.demand1_type = null;
      this.demand1_value = null;
      this.position = null;
      this.speed = null;
      this.output_voltage = null;
      this.output_current = null;
      this.bus_voltage = null;
      this.motor_output_percent = null;
      this.temperature = null;
      this.set_point = null;
      this.closed_loop_error = null;
      this.integral_accumulator = null;
      this.error_derivative = null;
      this.closed_loop_target = null;
      this.p_term = null;
      this.i_term = null;
      this.d_term = null;
      this.f_term = null;
      this.active_trajectory_position = null;
      this.active_trajectory_velocity = null;
      this.active_trajectory_arbitrary_feed_forward = null;
      this.active_trajectory_heading = null;
      this.forward_limit_switch = null;
      this.reverse_limit_switch = null;
      this.forward_softlimit = null;
      this.reverse_softlimit = null;
      this.neutral_output = null;
      this.motion_profile_top_level_buffer_count = null;
      this.motion_profile_top_level_buffer_full = null;
      this.motion_profile_status_top_buffer_rem = null;
      this.motion_profile_status_top_buffer_cnt = null;
      this.motion_profile_status_btm_buffer_cnt = null;
      this.motion_profile_status_has_underrun = null;
      this.motion_profile_status_is_underrun = null;
      this.motion_profile_status_active_point_valid = null;
      this.motion_profile_status_is_last = null;
      this.motion_profile_status_profile_slot_select0 = null;
      this.motion_profile_status_profile_slot_select1 = null;
      this.motion_profile_status_output_enable = null;
      this.motion_profile_time_dur_ms = null;
      this.faults = null;
      this.sticky_faults = null;
      this.conversion_factor = null;
      this.custom_profile_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
      if (initObj.hasOwnProperty('talon_mode')) {
        this.talon_mode = initObj.talon_mode
      }
      else {
        this.talon_mode = [];
      }
      if (initObj.hasOwnProperty('demand1_type')) {
        this.demand1_type = initObj.demand1_type
      }
      else {
        this.demand1_type = [];
      }
      if (initObj.hasOwnProperty('demand1_value')) {
        this.demand1_value = initObj.demand1_value
      }
      else {
        this.demand1_value = [];
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = [];
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = [];
      }
      if (initObj.hasOwnProperty('output_voltage')) {
        this.output_voltage = initObj.output_voltage
      }
      else {
        this.output_voltage = [];
      }
      if (initObj.hasOwnProperty('output_current')) {
        this.output_current = initObj.output_current
      }
      else {
        this.output_current = [];
      }
      if (initObj.hasOwnProperty('bus_voltage')) {
        this.bus_voltage = initObj.bus_voltage
      }
      else {
        this.bus_voltage = [];
      }
      if (initObj.hasOwnProperty('motor_output_percent')) {
        this.motor_output_percent = initObj.motor_output_percent
      }
      else {
        this.motor_output_percent = [];
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = [];
      }
      if (initObj.hasOwnProperty('set_point')) {
        this.set_point = initObj.set_point
      }
      else {
        this.set_point = [];
      }
      if (initObj.hasOwnProperty('closed_loop_error')) {
        this.closed_loop_error = initObj.closed_loop_error
      }
      else {
        this.closed_loop_error = [];
      }
      if (initObj.hasOwnProperty('integral_accumulator')) {
        this.integral_accumulator = initObj.integral_accumulator
      }
      else {
        this.integral_accumulator = [];
      }
      if (initObj.hasOwnProperty('error_derivative')) {
        this.error_derivative = initObj.error_derivative
      }
      else {
        this.error_derivative = [];
      }
      if (initObj.hasOwnProperty('closed_loop_target')) {
        this.closed_loop_target = initObj.closed_loop_target
      }
      else {
        this.closed_loop_target = [];
      }
      if (initObj.hasOwnProperty('p_term')) {
        this.p_term = initObj.p_term
      }
      else {
        this.p_term = [];
      }
      if (initObj.hasOwnProperty('i_term')) {
        this.i_term = initObj.i_term
      }
      else {
        this.i_term = [];
      }
      if (initObj.hasOwnProperty('d_term')) {
        this.d_term = initObj.d_term
      }
      else {
        this.d_term = [];
      }
      if (initObj.hasOwnProperty('f_term')) {
        this.f_term = initObj.f_term
      }
      else {
        this.f_term = [];
      }
      if (initObj.hasOwnProperty('active_trajectory_position')) {
        this.active_trajectory_position = initObj.active_trajectory_position
      }
      else {
        this.active_trajectory_position = [];
      }
      if (initObj.hasOwnProperty('active_trajectory_velocity')) {
        this.active_trajectory_velocity = initObj.active_trajectory_velocity
      }
      else {
        this.active_trajectory_velocity = [];
      }
      if (initObj.hasOwnProperty('active_trajectory_arbitrary_feed_forward')) {
        this.active_trajectory_arbitrary_feed_forward = initObj.active_trajectory_arbitrary_feed_forward
      }
      else {
        this.active_trajectory_arbitrary_feed_forward = [];
      }
      if (initObj.hasOwnProperty('active_trajectory_heading')) {
        this.active_trajectory_heading = initObj.active_trajectory_heading
      }
      else {
        this.active_trajectory_heading = [];
      }
      if (initObj.hasOwnProperty('forward_limit_switch')) {
        this.forward_limit_switch = initObj.forward_limit_switch
      }
      else {
        this.forward_limit_switch = [];
      }
      if (initObj.hasOwnProperty('reverse_limit_switch')) {
        this.reverse_limit_switch = initObj.reverse_limit_switch
      }
      else {
        this.reverse_limit_switch = [];
      }
      if (initObj.hasOwnProperty('forward_softlimit')) {
        this.forward_softlimit = initObj.forward_softlimit
      }
      else {
        this.forward_softlimit = [];
      }
      if (initObj.hasOwnProperty('reverse_softlimit')) {
        this.reverse_softlimit = initObj.reverse_softlimit
      }
      else {
        this.reverse_softlimit = [];
      }
      if (initObj.hasOwnProperty('neutral_output')) {
        this.neutral_output = initObj.neutral_output
      }
      else {
        this.neutral_output = [];
      }
      if (initObj.hasOwnProperty('motion_profile_top_level_buffer_count')) {
        this.motion_profile_top_level_buffer_count = initObj.motion_profile_top_level_buffer_count
      }
      else {
        this.motion_profile_top_level_buffer_count = [];
      }
      if (initObj.hasOwnProperty('motion_profile_top_level_buffer_full')) {
        this.motion_profile_top_level_buffer_full = initObj.motion_profile_top_level_buffer_full
      }
      else {
        this.motion_profile_top_level_buffer_full = [];
      }
      if (initObj.hasOwnProperty('motion_profile_status_top_buffer_rem')) {
        this.motion_profile_status_top_buffer_rem = initObj.motion_profile_status_top_buffer_rem
      }
      else {
        this.motion_profile_status_top_buffer_rem = [];
      }
      if (initObj.hasOwnProperty('motion_profile_status_top_buffer_cnt')) {
        this.motion_profile_status_top_buffer_cnt = initObj.motion_profile_status_top_buffer_cnt
      }
      else {
        this.motion_profile_status_top_buffer_cnt = [];
      }
      if (initObj.hasOwnProperty('motion_profile_status_btm_buffer_cnt')) {
        this.motion_profile_status_btm_buffer_cnt = initObj.motion_profile_status_btm_buffer_cnt
      }
      else {
        this.motion_profile_status_btm_buffer_cnt = [];
      }
      if (initObj.hasOwnProperty('motion_profile_status_has_underrun')) {
        this.motion_profile_status_has_underrun = initObj.motion_profile_status_has_underrun
      }
      else {
        this.motion_profile_status_has_underrun = [];
      }
      if (initObj.hasOwnProperty('motion_profile_status_is_underrun')) {
        this.motion_profile_status_is_underrun = initObj.motion_profile_status_is_underrun
      }
      else {
        this.motion_profile_status_is_underrun = [];
      }
      if (initObj.hasOwnProperty('motion_profile_status_active_point_valid')) {
        this.motion_profile_status_active_point_valid = initObj.motion_profile_status_active_point_valid
      }
      else {
        this.motion_profile_status_active_point_valid = [];
      }
      if (initObj.hasOwnProperty('motion_profile_status_is_last')) {
        this.motion_profile_status_is_last = initObj.motion_profile_status_is_last
      }
      else {
        this.motion_profile_status_is_last = [];
      }
      if (initObj.hasOwnProperty('motion_profile_status_profile_slot_select0')) {
        this.motion_profile_status_profile_slot_select0 = initObj.motion_profile_status_profile_slot_select0
      }
      else {
        this.motion_profile_status_profile_slot_select0 = [];
      }
      if (initObj.hasOwnProperty('motion_profile_status_profile_slot_select1')) {
        this.motion_profile_status_profile_slot_select1 = initObj.motion_profile_status_profile_slot_select1
      }
      else {
        this.motion_profile_status_profile_slot_select1 = [];
      }
      if (initObj.hasOwnProperty('motion_profile_status_output_enable')) {
        this.motion_profile_status_output_enable = initObj.motion_profile_status_output_enable
      }
      else {
        this.motion_profile_status_output_enable = [];
      }
      if (initObj.hasOwnProperty('motion_profile_time_dur_ms')) {
        this.motion_profile_time_dur_ms = initObj.motion_profile_time_dur_ms
      }
      else {
        this.motion_profile_time_dur_ms = [];
      }
      if (initObj.hasOwnProperty('faults')) {
        this.faults = initObj.faults
      }
      else {
        this.faults = [];
      }
      if (initObj.hasOwnProperty('sticky_faults')) {
        this.sticky_faults = initObj.sticky_faults
      }
      else {
        this.sticky_faults = [];
      }
      if (initObj.hasOwnProperty('conversion_factor')) {
        this.conversion_factor = initObj.conversion_factor
      }
      else {
        this.conversion_factor = [];
      }
      if (initObj.hasOwnProperty('custom_profile_status')) {
        this.custom_profile_status = initObj.custom_profile_status
      }
      else {
        this.custom_profile_status = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TalonState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [talon_mode]
    bufferOffset = _arraySerializer.string(obj.talon_mode, buffer, bufferOffset, null);
    // Serialize message field [demand1_type]
    bufferOffset = _arraySerializer.string(obj.demand1_type, buffer, bufferOffset, null);
    // Serialize message field [demand1_value]
    bufferOffset = _arraySerializer.float64(obj.demand1_value, buffer, bufferOffset, null);
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float64(obj.position, buffer, bufferOffset, null);
    // Serialize message field [speed]
    bufferOffset = _arraySerializer.float64(obj.speed, buffer, bufferOffset, null);
    // Serialize message field [output_voltage]
    bufferOffset = _arraySerializer.float64(obj.output_voltage, buffer, bufferOffset, null);
    // Serialize message field [output_current]
    bufferOffset = _arraySerializer.float64(obj.output_current, buffer, bufferOffset, null);
    // Serialize message field [bus_voltage]
    bufferOffset = _arraySerializer.float64(obj.bus_voltage, buffer, bufferOffset, null);
    // Serialize message field [motor_output_percent]
    bufferOffset = _arraySerializer.float64(obj.motor_output_percent, buffer, bufferOffset, null);
    // Serialize message field [temperature]
    bufferOffset = _arraySerializer.float64(obj.temperature, buffer, bufferOffset, null);
    // Serialize message field [set_point]
    bufferOffset = _arraySerializer.float64(obj.set_point, buffer, bufferOffset, null);
    // Serialize message field [closed_loop_error]
    bufferOffset = _arraySerializer.float64(obj.closed_loop_error, buffer, bufferOffset, null);
    // Serialize message field [integral_accumulator]
    bufferOffset = _arraySerializer.float64(obj.integral_accumulator, buffer, bufferOffset, null);
    // Serialize message field [error_derivative]
    bufferOffset = _arraySerializer.float64(obj.error_derivative, buffer, bufferOffset, null);
    // Serialize message field [closed_loop_target]
    bufferOffset = _arraySerializer.float64(obj.closed_loop_target, buffer, bufferOffset, null);
    // Serialize message field [p_term]
    bufferOffset = _arraySerializer.float64(obj.p_term, buffer, bufferOffset, null);
    // Serialize message field [i_term]
    bufferOffset = _arraySerializer.float64(obj.i_term, buffer, bufferOffset, null);
    // Serialize message field [d_term]
    bufferOffset = _arraySerializer.float64(obj.d_term, buffer, bufferOffset, null);
    // Serialize message field [f_term]
    bufferOffset = _arraySerializer.float64(obj.f_term, buffer, bufferOffset, null);
    // Serialize message field [active_trajectory_position]
    bufferOffset = _arraySerializer.float64(obj.active_trajectory_position, buffer, bufferOffset, null);
    // Serialize message field [active_trajectory_velocity]
    bufferOffset = _arraySerializer.float64(obj.active_trajectory_velocity, buffer, bufferOffset, null);
    // Serialize message field [active_trajectory_arbitrary_feed_forward]
    bufferOffset = _arraySerializer.float64(obj.active_trajectory_arbitrary_feed_forward, buffer, bufferOffset, null);
    // Serialize message field [active_trajectory_heading]
    bufferOffset = _arraySerializer.float64(obj.active_trajectory_heading, buffer, bufferOffset, null);
    // Serialize message field [forward_limit_switch]
    bufferOffset = _arraySerializer.bool(obj.forward_limit_switch, buffer, bufferOffset, null);
    // Serialize message field [reverse_limit_switch]
    bufferOffset = _arraySerializer.bool(obj.reverse_limit_switch, buffer, bufferOffset, null);
    // Serialize message field [forward_softlimit]
    bufferOffset = _arraySerializer.bool(obj.forward_softlimit, buffer, bufferOffset, null);
    // Serialize message field [reverse_softlimit]
    bufferOffset = _arraySerializer.bool(obj.reverse_softlimit, buffer, bufferOffset, null);
    // Serialize message field [neutral_output]
    bufferOffset = _arraySerializer.bool(obj.neutral_output, buffer, bufferOffset, null);
    // Serialize message field [motion_profile_top_level_buffer_count]
    bufferOffset = _arraySerializer.int32(obj.motion_profile_top_level_buffer_count, buffer, bufferOffset, null);
    // Serialize message field [motion_profile_top_level_buffer_full]
    bufferOffset = _arraySerializer.bool(obj.motion_profile_top_level_buffer_full, buffer, bufferOffset, null);
    // Serialize message field [motion_profile_status_top_buffer_rem]
    bufferOffset = _arraySerializer.int32(obj.motion_profile_status_top_buffer_rem, buffer, bufferOffset, null);
    // Serialize message field [motion_profile_status_top_buffer_cnt]
    bufferOffset = _arraySerializer.int32(obj.motion_profile_status_top_buffer_cnt, buffer, bufferOffset, null);
    // Serialize message field [motion_profile_status_btm_buffer_cnt]
    bufferOffset = _arraySerializer.int32(obj.motion_profile_status_btm_buffer_cnt, buffer, bufferOffset, null);
    // Serialize message field [motion_profile_status_has_underrun]
    bufferOffset = _arraySerializer.bool(obj.motion_profile_status_has_underrun, buffer, bufferOffset, null);
    // Serialize message field [motion_profile_status_is_underrun]
    bufferOffset = _arraySerializer.bool(obj.motion_profile_status_is_underrun, buffer, bufferOffset, null);
    // Serialize message field [motion_profile_status_active_point_valid]
    bufferOffset = _arraySerializer.bool(obj.motion_profile_status_active_point_valid, buffer, bufferOffset, null);
    // Serialize message field [motion_profile_status_is_last]
    bufferOffset = _arraySerializer.bool(obj.motion_profile_status_is_last, buffer, bufferOffset, null);
    // Serialize message field [motion_profile_status_profile_slot_select0]
    bufferOffset = _arraySerializer.int32(obj.motion_profile_status_profile_slot_select0, buffer, bufferOffset, null);
    // Serialize message field [motion_profile_status_profile_slot_select1]
    bufferOffset = _arraySerializer.int32(obj.motion_profile_status_profile_slot_select1, buffer, bufferOffset, null);
    // Serialize message field [motion_profile_status_output_enable]
    bufferOffset = _arraySerializer.string(obj.motion_profile_status_output_enable, buffer, bufferOffset, null);
    // Serialize message field [motion_profile_time_dur_ms]
    bufferOffset = _arraySerializer.int32(obj.motion_profile_time_dur_ms, buffer, bufferOffset, null);
    // Serialize message field [faults]
    bufferOffset = _arraySerializer.string(obj.faults, buffer, bufferOffset, null);
    // Serialize message field [sticky_faults]
    bufferOffset = _arraySerializer.string(obj.sticky_faults, buffer, bufferOffset, null);
    // Serialize message field [conversion_factor]
    bufferOffset = _arraySerializer.float64(obj.conversion_factor, buffer, bufferOffset, null);
    // Serialize message field [custom_profile_status]
    // Serialize the length for message field [custom_profile_status]
    bufferOffset = _serializer.uint32(obj.custom_profile_status.length, buffer, bufferOffset);
    obj.custom_profile_status.forEach((val) => {
      bufferOffset = CustomProfileStatus.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TalonState
    let len;
    let data = new TalonState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [talon_mode]
    data.talon_mode = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [demand1_type]
    data.demand1_type = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [demand1_value]
    data.demand1_value = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [speed]
    data.speed = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [output_voltage]
    data.output_voltage = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [output_current]
    data.output_current = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [bus_voltage]
    data.bus_voltage = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [motor_output_percent]
    data.motor_output_percent = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [temperature]
    data.temperature = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [set_point]
    data.set_point = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [closed_loop_error]
    data.closed_loop_error = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [integral_accumulator]
    data.integral_accumulator = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [error_derivative]
    data.error_derivative = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [closed_loop_target]
    data.closed_loop_target = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [p_term]
    data.p_term = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [i_term]
    data.i_term = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [d_term]
    data.d_term = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [f_term]
    data.f_term = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [active_trajectory_position]
    data.active_trajectory_position = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [active_trajectory_velocity]
    data.active_trajectory_velocity = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [active_trajectory_arbitrary_feed_forward]
    data.active_trajectory_arbitrary_feed_forward = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [active_trajectory_heading]
    data.active_trajectory_heading = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [forward_limit_switch]
    data.forward_limit_switch = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [reverse_limit_switch]
    data.reverse_limit_switch = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [forward_softlimit]
    data.forward_softlimit = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [reverse_softlimit]
    data.reverse_softlimit = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [neutral_output]
    data.neutral_output = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [motion_profile_top_level_buffer_count]
    data.motion_profile_top_level_buffer_count = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [motion_profile_top_level_buffer_full]
    data.motion_profile_top_level_buffer_full = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [motion_profile_status_top_buffer_rem]
    data.motion_profile_status_top_buffer_rem = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [motion_profile_status_top_buffer_cnt]
    data.motion_profile_status_top_buffer_cnt = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [motion_profile_status_btm_buffer_cnt]
    data.motion_profile_status_btm_buffer_cnt = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [motion_profile_status_has_underrun]
    data.motion_profile_status_has_underrun = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [motion_profile_status_is_underrun]
    data.motion_profile_status_is_underrun = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [motion_profile_status_active_point_valid]
    data.motion_profile_status_active_point_valid = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [motion_profile_status_is_last]
    data.motion_profile_status_is_last = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [motion_profile_status_profile_slot_select0]
    data.motion_profile_status_profile_slot_select0 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [motion_profile_status_profile_slot_select1]
    data.motion_profile_status_profile_slot_select1 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [motion_profile_status_output_enable]
    data.motion_profile_status_output_enable = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [motion_profile_time_dur_ms]
    data.motion_profile_time_dur_ms = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [faults]
    data.faults = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [sticky_faults]
    data.sticky_faults = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [conversion_factor]
    data.conversion_factor = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [custom_profile_status]
    // Deserialize array length for message field [custom_profile_status]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.custom_profile_status = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.custom_profile_status[i] = CustomProfileStatus.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.name.forEach((val) => {
      length += 4 + val.length;
    });
    object.talon_mode.forEach((val) => {
      length += 4 + val.length;
    });
    object.demand1_type.forEach((val) => {
      length += 4 + val.length;
    });
    length += 8 * object.demand1_value.length;
    length += 8 * object.position.length;
    length += 8 * object.speed.length;
    length += 8 * object.output_voltage.length;
    length += 8 * object.output_current.length;
    length += 8 * object.bus_voltage.length;
    length += 8 * object.motor_output_percent.length;
    length += 8 * object.temperature.length;
    length += 8 * object.set_point.length;
    length += 8 * object.closed_loop_error.length;
    length += 8 * object.integral_accumulator.length;
    length += 8 * object.error_derivative.length;
    length += 8 * object.closed_loop_target.length;
    length += 8 * object.p_term.length;
    length += 8 * object.i_term.length;
    length += 8 * object.d_term.length;
    length += 8 * object.f_term.length;
    length += 8 * object.active_trajectory_position.length;
    length += 8 * object.active_trajectory_velocity.length;
    length += 8 * object.active_trajectory_arbitrary_feed_forward.length;
    length += 8 * object.active_trajectory_heading.length;
    length += object.forward_limit_switch.length;
    length += object.reverse_limit_switch.length;
    length += object.forward_softlimit.length;
    length += object.reverse_softlimit.length;
    length += object.neutral_output.length;
    length += 4 * object.motion_profile_top_level_buffer_count.length;
    length += object.motion_profile_top_level_buffer_full.length;
    length += 4 * object.motion_profile_status_top_buffer_rem.length;
    length += 4 * object.motion_profile_status_top_buffer_cnt.length;
    length += 4 * object.motion_profile_status_btm_buffer_cnt.length;
    length += object.motion_profile_status_has_underrun.length;
    length += object.motion_profile_status_is_underrun.length;
    length += object.motion_profile_status_active_point_valid.length;
    length += object.motion_profile_status_is_last.length;
    length += 4 * object.motion_profile_status_profile_slot_select0.length;
    length += 4 * object.motion_profile_status_profile_slot_select1.length;
    object.motion_profile_status_output_enable.forEach((val) => {
      length += 4 + val.length;
    });
    length += 4 * object.motion_profile_time_dur_ms.length;
    object.faults.forEach((val) => {
      length += 4 + val.length;
    });
    object.sticky_faults.forEach((val) => {
      length += 4 + val.length;
    });
    length += 8 * object.conversion_factor.length;
    object.custom_profile_status.forEach((val) => {
      length += CustomProfileStatus.getMessageSize(val);
    });
    return length + 184;
  }

  static datatype() {
    // Returns string type for a message object
    return 'talon_state_msgs/TalonState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3c4ea359830a4aa13b177949e57ebce3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    string[] name
    string[] talon_mode
    string[] demand1_type
    float64[] demand1_value
    float64[] position
    float64[] speed
    float64[] output_voltage
    float64[] output_current
    float64[] bus_voltage
    float64[] motor_output_percent
    float64[] temperature
    float64[] set_point
    float64[] closed_loop_error
    float64[] integral_accumulator
    float64[] error_derivative
    float64[] closed_loop_target
    float64[] p_term
    float64[] i_term
    float64[] d_term
    float64[] f_term
    float64[] active_trajectory_position
    float64[] active_trajectory_velocity
    float64[] active_trajectory_arbitrary_feed_forward
    float64[] active_trajectory_heading
    bool[] forward_limit_switch
    bool[] reverse_limit_switch
    bool[] forward_softlimit
    bool[] reverse_softlimit
    bool[] neutral_output
    int32[]   motion_profile_top_level_buffer_count
    bool[]    motion_profile_top_level_buffer_full
    int32[]   motion_profile_status_top_buffer_rem
    int32[]   motion_profile_status_top_buffer_cnt
    int32[]   motion_profile_status_btm_buffer_cnt
    bool[]    motion_profile_status_has_underrun
    bool[]    motion_profile_status_is_underrun
    bool[]    motion_profile_status_active_point_valid
    bool[]    motion_profile_status_is_last
    int32[]   motion_profile_status_profile_slot_select0
    int32[]   motion_profile_status_profile_slot_select1
    string[]  motion_profile_status_output_enable
    int32[]   motion_profile_time_dur_ms
    string[]  faults
    string[]  sticky_faults
    float64[] conversion_factor
    talon_state_msgs/CustomProfileStatus[] custom_profile_status
    
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
    MSG: talon_state_msgs/CustomProfileStatus
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
    const resolved = new TalonState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    if (msg.talon_mode !== undefined) {
      resolved.talon_mode = msg.talon_mode;
    }
    else {
      resolved.talon_mode = []
    }

    if (msg.demand1_type !== undefined) {
      resolved.demand1_type = msg.demand1_type;
    }
    else {
      resolved.demand1_type = []
    }

    if (msg.demand1_value !== undefined) {
      resolved.demand1_value = msg.demand1_value;
    }
    else {
      resolved.demand1_value = []
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = []
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = []
    }

    if (msg.output_voltage !== undefined) {
      resolved.output_voltage = msg.output_voltage;
    }
    else {
      resolved.output_voltage = []
    }

    if (msg.output_current !== undefined) {
      resolved.output_current = msg.output_current;
    }
    else {
      resolved.output_current = []
    }

    if (msg.bus_voltage !== undefined) {
      resolved.bus_voltage = msg.bus_voltage;
    }
    else {
      resolved.bus_voltage = []
    }

    if (msg.motor_output_percent !== undefined) {
      resolved.motor_output_percent = msg.motor_output_percent;
    }
    else {
      resolved.motor_output_percent = []
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = []
    }

    if (msg.set_point !== undefined) {
      resolved.set_point = msg.set_point;
    }
    else {
      resolved.set_point = []
    }

    if (msg.closed_loop_error !== undefined) {
      resolved.closed_loop_error = msg.closed_loop_error;
    }
    else {
      resolved.closed_loop_error = []
    }

    if (msg.integral_accumulator !== undefined) {
      resolved.integral_accumulator = msg.integral_accumulator;
    }
    else {
      resolved.integral_accumulator = []
    }

    if (msg.error_derivative !== undefined) {
      resolved.error_derivative = msg.error_derivative;
    }
    else {
      resolved.error_derivative = []
    }

    if (msg.closed_loop_target !== undefined) {
      resolved.closed_loop_target = msg.closed_loop_target;
    }
    else {
      resolved.closed_loop_target = []
    }

    if (msg.p_term !== undefined) {
      resolved.p_term = msg.p_term;
    }
    else {
      resolved.p_term = []
    }

    if (msg.i_term !== undefined) {
      resolved.i_term = msg.i_term;
    }
    else {
      resolved.i_term = []
    }

    if (msg.d_term !== undefined) {
      resolved.d_term = msg.d_term;
    }
    else {
      resolved.d_term = []
    }

    if (msg.f_term !== undefined) {
      resolved.f_term = msg.f_term;
    }
    else {
      resolved.f_term = []
    }

    if (msg.active_trajectory_position !== undefined) {
      resolved.active_trajectory_position = msg.active_trajectory_position;
    }
    else {
      resolved.active_trajectory_position = []
    }

    if (msg.active_trajectory_velocity !== undefined) {
      resolved.active_trajectory_velocity = msg.active_trajectory_velocity;
    }
    else {
      resolved.active_trajectory_velocity = []
    }

    if (msg.active_trajectory_arbitrary_feed_forward !== undefined) {
      resolved.active_trajectory_arbitrary_feed_forward = msg.active_trajectory_arbitrary_feed_forward;
    }
    else {
      resolved.active_trajectory_arbitrary_feed_forward = []
    }

    if (msg.active_trajectory_heading !== undefined) {
      resolved.active_trajectory_heading = msg.active_trajectory_heading;
    }
    else {
      resolved.active_trajectory_heading = []
    }

    if (msg.forward_limit_switch !== undefined) {
      resolved.forward_limit_switch = msg.forward_limit_switch;
    }
    else {
      resolved.forward_limit_switch = []
    }

    if (msg.reverse_limit_switch !== undefined) {
      resolved.reverse_limit_switch = msg.reverse_limit_switch;
    }
    else {
      resolved.reverse_limit_switch = []
    }

    if (msg.forward_softlimit !== undefined) {
      resolved.forward_softlimit = msg.forward_softlimit;
    }
    else {
      resolved.forward_softlimit = []
    }

    if (msg.reverse_softlimit !== undefined) {
      resolved.reverse_softlimit = msg.reverse_softlimit;
    }
    else {
      resolved.reverse_softlimit = []
    }

    if (msg.neutral_output !== undefined) {
      resolved.neutral_output = msg.neutral_output;
    }
    else {
      resolved.neutral_output = []
    }

    if (msg.motion_profile_top_level_buffer_count !== undefined) {
      resolved.motion_profile_top_level_buffer_count = msg.motion_profile_top_level_buffer_count;
    }
    else {
      resolved.motion_profile_top_level_buffer_count = []
    }

    if (msg.motion_profile_top_level_buffer_full !== undefined) {
      resolved.motion_profile_top_level_buffer_full = msg.motion_profile_top_level_buffer_full;
    }
    else {
      resolved.motion_profile_top_level_buffer_full = []
    }

    if (msg.motion_profile_status_top_buffer_rem !== undefined) {
      resolved.motion_profile_status_top_buffer_rem = msg.motion_profile_status_top_buffer_rem;
    }
    else {
      resolved.motion_profile_status_top_buffer_rem = []
    }

    if (msg.motion_profile_status_top_buffer_cnt !== undefined) {
      resolved.motion_profile_status_top_buffer_cnt = msg.motion_profile_status_top_buffer_cnt;
    }
    else {
      resolved.motion_profile_status_top_buffer_cnt = []
    }

    if (msg.motion_profile_status_btm_buffer_cnt !== undefined) {
      resolved.motion_profile_status_btm_buffer_cnt = msg.motion_profile_status_btm_buffer_cnt;
    }
    else {
      resolved.motion_profile_status_btm_buffer_cnt = []
    }

    if (msg.motion_profile_status_has_underrun !== undefined) {
      resolved.motion_profile_status_has_underrun = msg.motion_profile_status_has_underrun;
    }
    else {
      resolved.motion_profile_status_has_underrun = []
    }

    if (msg.motion_profile_status_is_underrun !== undefined) {
      resolved.motion_profile_status_is_underrun = msg.motion_profile_status_is_underrun;
    }
    else {
      resolved.motion_profile_status_is_underrun = []
    }

    if (msg.motion_profile_status_active_point_valid !== undefined) {
      resolved.motion_profile_status_active_point_valid = msg.motion_profile_status_active_point_valid;
    }
    else {
      resolved.motion_profile_status_active_point_valid = []
    }

    if (msg.motion_profile_status_is_last !== undefined) {
      resolved.motion_profile_status_is_last = msg.motion_profile_status_is_last;
    }
    else {
      resolved.motion_profile_status_is_last = []
    }

    if (msg.motion_profile_status_profile_slot_select0 !== undefined) {
      resolved.motion_profile_status_profile_slot_select0 = msg.motion_profile_status_profile_slot_select0;
    }
    else {
      resolved.motion_profile_status_profile_slot_select0 = []
    }

    if (msg.motion_profile_status_profile_slot_select1 !== undefined) {
      resolved.motion_profile_status_profile_slot_select1 = msg.motion_profile_status_profile_slot_select1;
    }
    else {
      resolved.motion_profile_status_profile_slot_select1 = []
    }

    if (msg.motion_profile_status_output_enable !== undefined) {
      resolved.motion_profile_status_output_enable = msg.motion_profile_status_output_enable;
    }
    else {
      resolved.motion_profile_status_output_enable = []
    }

    if (msg.motion_profile_time_dur_ms !== undefined) {
      resolved.motion_profile_time_dur_ms = msg.motion_profile_time_dur_ms;
    }
    else {
      resolved.motion_profile_time_dur_ms = []
    }

    if (msg.faults !== undefined) {
      resolved.faults = msg.faults;
    }
    else {
      resolved.faults = []
    }

    if (msg.sticky_faults !== undefined) {
      resolved.sticky_faults = msg.sticky_faults;
    }
    else {
      resolved.sticky_faults = []
    }

    if (msg.conversion_factor !== undefined) {
      resolved.conversion_factor = msg.conversion_factor;
    }
    else {
      resolved.conversion_factor = []
    }

    if (msg.custom_profile_status !== undefined) {
      resolved.custom_profile_status = new Array(msg.custom_profile_status.length);
      for (let i = 0; i < resolved.custom_profile_status.length; ++i) {
        resolved.custom_profile_status[i] = CustomProfileStatus.Resolve(msg.custom_profile_status[i]);
      }
    }
    else {
      resolved.custom_profile_status = []
    }

    return resolved;
    }
};

module.exports = TalonState;
