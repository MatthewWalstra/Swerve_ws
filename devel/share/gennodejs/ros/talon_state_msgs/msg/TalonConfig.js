// Auto-generated. Do not edit!

// (in-package talon_state_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TalonConfig {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.name = null;
      this.can_id = null;
      this.feedback_coefficient = null;
      this.feedback_sensor = null;
      this.remote_feedback_sensor = null;
      this.remote_feedback_device_id0 = null;
      this.remote_feedback_filter0 = null;
      this.remote_feedback_device_id1 = null;
      this.remote_feedback_filter1 = null;
      this.sensor_term_sum0 = null;
      this.sensor_term_sum1 = null;
      this.sensor_term_diff0 = null;
      this.sensor_term_diff1 = null;
      this.encoder_ticks_per_rotation = null;
      this.pid_slot = null;
      this.pid_p0 = null;
      this.pid_i0 = null;
      this.pid_d0 = null;
      this.pid_f0 = null;
      this.pid_izone0 = null;
      this.pid_allowable_closed_loop_error0 = null;
      this.pid_max_integral_accumulator0 = null;
      this.pid_closed_loop_peak_output0 = null;
      this.pid_closed_loop_period0 = null;
      this.pid_p1 = null;
      this.pid_i1 = null;
      this.pid_d1 = null;
      this.pid_f1 = null;
      this.pid_izone1 = null;
      this.pid_allowable_closed_loop_error1 = null;
      this.pid_max_integral_accumulator1 = null;
      this.pid_closed_loop_peak_output1 = null;
      this.pid_closed_loop_period1 = null;
      this.pid_p2 = null;
      this.pid_i2 = null;
      this.pid_d2 = null;
      this.pid_f2 = null;
      this.pid_izone2 = null;
      this.pid_allowable_closed_loop_error2 = null;
      this.pid_max_integral_accumulator2 = null;
      this.pid_closed_loop_peak_output2 = null;
      this.pid_closed_loop_period2 = null;
      this.pid_p3 = null;
      this.pid_i3 = null;
      this.pid_d3 = null;
      this.pid_f3 = null;
      this.pid_izone3 = null;
      this.pid_allowable_closed_loop_error3 = null;
      this.pid_max_integral_accumulator3 = null;
      this.pid_closed_loop_peak_output3 = null;
      this.pid_closed_loop_period3 = null;
      this.aux_pid_polarity = null;
      this.invert = null;
      this.sensorPhase = null;
      this.neutral_mode = null;
      this.closed_loop_ramp = null;
      this.open_loop_ramp = null;
      this.peak_output_forward = null;
      this.peak_output_reverse = null;
      this.nominal_output_forward = null;
      this.nominal_output_reverse = null;
      this.neutral_deadband = null;
      this.voltage_compensation_saturation = null;
      this.voltage_measurement_filter = null;
      this.voltage_compensation_enable = null;
      this.velocity_measurement_period = null;
      this.velocity_measurement_window = null;
      this.limit_switch_local_forward_source = null;
      this.limit_switch_local_forward_normal = null;
      this.limit_switch_local_reverse_source = null;
      this.limit_switch_local_reverse_normal = null;
      this.limit_switch_remote_forward_source = null;
      this.limit_switch_remote_forward_normal = null;
      this.limit_switch_remote_forward_id = null;
      this.limit_switch_remote_reverse_source = null;
      this.limit_switch_remote_reverse_normal = null;
      this.limit_switch_remote_reverse_id = null;
      this.softlimit_forward_threshold = null;
      this.softlimit_forward_enable = null;
      this.softlimit_reverse_threshold = null;
      this.softlimit_reverse_enable = null;
      this.softlimits_override_enable = null;
      this.current_limit_peak_amps = null;
      this.current_limit_peak_msec = null;
      this.current_limit_continuous_amps = null;
      this.current_limit_enable = null;
      this.motion_cruise_velocity = null;
      this.motion_acceleration = null;
      this.motion_s_curve_strength = null;
      this.status_1_general_period = null;
      this.status_2_feedback0_period = null;
      this.status_3_quadrature_period = null;
      this.status_4_aintempvbat_period = null;
      this.status_6_misc_period = null;
      this.status_7_commstatus_period = null;
      this.status_8_pulsewidth_period = null;
      this.status_9_motprofbuffer_period = null;
      this.status_10_motionmagic_period = null;
      this.status_11_uartgadgeteer_period = null;
      this.status_12_feedback1_period = null;
      this.status_13_base_pidf0_period = null;
      this.status_14_turn_pidf1_period = null;
      this.status_15_firmwareapistatus_period = null;
      this.control_3_general_period = null;
      this.control_4_advanced_period = null;
      this.control_5_feedbackoutputoverride_period = null;
      this.control_6_motprofaddtrajpoint_period = null;
      this.motion_profile_trajectory_period = null;
      this.conversion_factor = null;
      this.firmware_version = null;
      this.water_game = null;
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
      if (initObj.hasOwnProperty('can_id')) {
        this.can_id = initObj.can_id
      }
      else {
        this.can_id = [];
      }
      if (initObj.hasOwnProperty('feedback_coefficient')) {
        this.feedback_coefficient = initObj.feedback_coefficient
      }
      else {
        this.feedback_coefficient = [];
      }
      if (initObj.hasOwnProperty('feedback_sensor')) {
        this.feedback_sensor = initObj.feedback_sensor
      }
      else {
        this.feedback_sensor = [];
      }
      if (initObj.hasOwnProperty('remote_feedback_sensor')) {
        this.remote_feedback_sensor = initObj.remote_feedback_sensor
      }
      else {
        this.remote_feedback_sensor = [];
      }
      if (initObj.hasOwnProperty('remote_feedback_device_id0')) {
        this.remote_feedback_device_id0 = initObj.remote_feedback_device_id0
      }
      else {
        this.remote_feedback_device_id0 = [];
      }
      if (initObj.hasOwnProperty('remote_feedback_filter0')) {
        this.remote_feedback_filter0 = initObj.remote_feedback_filter0
      }
      else {
        this.remote_feedback_filter0 = [];
      }
      if (initObj.hasOwnProperty('remote_feedback_device_id1')) {
        this.remote_feedback_device_id1 = initObj.remote_feedback_device_id1
      }
      else {
        this.remote_feedback_device_id1 = [];
      }
      if (initObj.hasOwnProperty('remote_feedback_filter1')) {
        this.remote_feedback_filter1 = initObj.remote_feedback_filter1
      }
      else {
        this.remote_feedback_filter1 = [];
      }
      if (initObj.hasOwnProperty('sensor_term_sum0')) {
        this.sensor_term_sum0 = initObj.sensor_term_sum0
      }
      else {
        this.sensor_term_sum0 = [];
      }
      if (initObj.hasOwnProperty('sensor_term_sum1')) {
        this.sensor_term_sum1 = initObj.sensor_term_sum1
      }
      else {
        this.sensor_term_sum1 = [];
      }
      if (initObj.hasOwnProperty('sensor_term_diff0')) {
        this.sensor_term_diff0 = initObj.sensor_term_diff0
      }
      else {
        this.sensor_term_diff0 = [];
      }
      if (initObj.hasOwnProperty('sensor_term_diff1')) {
        this.sensor_term_diff1 = initObj.sensor_term_diff1
      }
      else {
        this.sensor_term_diff1 = [];
      }
      if (initObj.hasOwnProperty('encoder_ticks_per_rotation')) {
        this.encoder_ticks_per_rotation = initObj.encoder_ticks_per_rotation
      }
      else {
        this.encoder_ticks_per_rotation = [];
      }
      if (initObj.hasOwnProperty('pid_slot')) {
        this.pid_slot = initObj.pid_slot
      }
      else {
        this.pid_slot = [];
      }
      if (initObj.hasOwnProperty('pid_p0')) {
        this.pid_p0 = initObj.pid_p0
      }
      else {
        this.pid_p0 = [];
      }
      if (initObj.hasOwnProperty('pid_i0')) {
        this.pid_i0 = initObj.pid_i0
      }
      else {
        this.pid_i0 = [];
      }
      if (initObj.hasOwnProperty('pid_d0')) {
        this.pid_d0 = initObj.pid_d0
      }
      else {
        this.pid_d0 = [];
      }
      if (initObj.hasOwnProperty('pid_f0')) {
        this.pid_f0 = initObj.pid_f0
      }
      else {
        this.pid_f0 = [];
      }
      if (initObj.hasOwnProperty('pid_izone0')) {
        this.pid_izone0 = initObj.pid_izone0
      }
      else {
        this.pid_izone0 = [];
      }
      if (initObj.hasOwnProperty('pid_allowable_closed_loop_error0')) {
        this.pid_allowable_closed_loop_error0 = initObj.pid_allowable_closed_loop_error0
      }
      else {
        this.pid_allowable_closed_loop_error0 = [];
      }
      if (initObj.hasOwnProperty('pid_max_integral_accumulator0')) {
        this.pid_max_integral_accumulator0 = initObj.pid_max_integral_accumulator0
      }
      else {
        this.pid_max_integral_accumulator0 = [];
      }
      if (initObj.hasOwnProperty('pid_closed_loop_peak_output0')) {
        this.pid_closed_loop_peak_output0 = initObj.pid_closed_loop_peak_output0
      }
      else {
        this.pid_closed_loop_peak_output0 = [];
      }
      if (initObj.hasOwnProperty('pid_closed_loop_period0')) {
        this.pid_closed_loop_period0 = initObj.pid_closed_loop_period0
      }
      else {
        this.pid_closed_loop_period0 = [];
      }
      if (initObj.hasOwnProperty('pid_p1')) {
        this.pid_p1 = initObj.pid_p1
      }
      else {
        this.pid_p1 = [];
      }
      if (initObj.hasOwnProperty('pid_i1')) {
        this.pid_i1 = initObj.pid_i1
      }
      else {
        this.pid_i1 = [];
      }
      if (initObj.hasOwnProperty('pid_d1')) {
        this.pid_d1 = initObj.pid_d1
      }
      else {
        this.pid_d1 = [];
      }
      if (initObj.hasOwnProperty('pid_f1')) {
        this.pid_f1 = initObj.pid_f1
      }
      else {
        this.pid_f1 = [];
      }
      if (initObj.hasOwnProperty('pid_izone1')) {
        this.pid_izone1 = initObj.pid_izone1
      }
      else {
        this.pid_izone1 = [];
      }
      if (initObj.hasOwnProperty('pid_allowable_closed_loop_error1')) {
        this.pid_allowable_closed_loop_error1 = initObj.pid_allowable_closed_loop_error1
      }
      else {
        this.pid_allowable_closed_loop_error1 = [];
      }
      if (initObj.hasOwnProperty('pid_max_integral_accumulator1')) {
        this.pid_max_integral_accumulator1 = initObj.pid_max_integral_accumulator1
      }
      else {
        this.pid_max_integral_accumulator1 = [];
      }
      if (initObj.hasOwnProperty('pid_closed_loop_peak_output1')) {
        this.pid_closed_loop_peak_output1 = initObj.pid_closed_loop_peak_output1
      }
      else {
        this.pid_closed_loop_peak_output1 = [];
      }
      if (initObj.hasOwnProperty('pid_closed_loop_period1')) {
        this.pid_closed_loop_period1 = initObj.pid_closed_loop_period1
      }
      else {
        this.pid_closed_loop_period1 = [];
      }
      if (initObj.hasOwnProperty('pid_p2')) {
        this.pid_p2 = initObj.pid_p2
      }
      else {
        this.pid_p2 = [];
      }
      if (initObj.hasOwnProperty('pid_i2')) {
        this.pid_i2 = initObj.pid_i2
      }
      else {
        this.pid_i2 = [];
      }
      if (initObj.hasOwnProperty('pid_d2')) {
        this.pid_d2 = initObj.pid_d2
      }
      else {
        this.pid_d2 = [];
      }
      if (initObj.hasOwnProperty('pid_f2')) {
        this.pid_f2 = initObj.pid_f2
      }
      else {
        this.pid_f2 = [];
      }
      if (initObj.hasOwnProperty('pid_izone2')) {
        this.pid_izone2 = initObj.pid_izone2
      }
      else {
        this.pid_izone2 = [];
      }
      if (initObj.hasOwnProperty('pid_allowable_closed_loop_error2')) {
        this.pid_allowable_closed_loop_error2 = initObj.pid_allowable_closed_loop_error2
      }
      else {
        this.pid_allowable_closed_loop_error2 = [];
      }
      if (initObj.hasOwnProperty('pid_max_integral_accumulator2')) {
        this.pid_max_integral_accumulator2 = initObj.pid_max_integral_accumulator2
      }
      else {
        this.pid_max_integral_accumulator2 = [];
      }
      if (initObj.hasOwnProperty('pid_closed_loop_peak_output2')) {
        this.pid_closed_loop_peak_output2 = initObj.pid_closed_loop_peak_output2
      }
      else {
        this.pid_closed_loop_peak_output2 = [];
      }
      if (initObj.hasOwnProperty('pid_closed_loop_period2')) {
        this.pid_closed_loop_period2 = initObj.pid_closed_loop_period2
      }
      else {
        this.pid_closed_loop_period2 = [];
      }
      if (initObj.hasOwnProperty('pid_p3')) {
        this.pid_p3 = initObj.pid_p3
      }
      else {
        this.pid_p3 = [];
      }
      if (initObj.hasOwnProperty('pid_i3')) {
        this.pid_i3 = initObj.pid_i3
      }
      else {
        this.pid_i3 = [];
      }
      if (initObj.hasOwnProperty('pid_d3')) {
        this.pid_d3 = initObj.pid_d3
      }
      else {
        this.pid_d3 = [];
      }
      if (initObj.hasOwnProperty('pid_f3')) {
        this.pid_f3 = initObj.pid_f3
      }
      else {
        this.pid_f3 = [];
      }
      if (initObj.hasOwnProperty('pid_izone3')) {
        this.pid_izone3 = initObj.pid_izone3
      }
      else {
        this.pid_izone3 = [];
      }
      if (initObj.hasOwnProperty('pid_allowable_closed_loop_error3')) {
        this.pid_allowable_closed_loop_error3 = initObj.pid_allowable_closed_loop_error3
      }
      else {
        this.pid_allowable_closed_loop_error3 = [];
      }
      if (initObj.hasOwnProperty('pid_max_integral_accumulator3')) {
        this.pid_max_integral_accumulator3 = initObj.pid_max_integral_accumulator3
      }
      else {
        this.pid_max_integral_accumulator3 = [];
      }
      if (initObj.hasOwnProperty('pid_closed_loop_peak_output3')) {
        this.pid_closed_loop_peak_output3 = initObj.pid_closed_loop_peak_output3
      }
      else {
        this.pid_closed_loop_peak_output3 = [];
      }
      if (initObj.hasOwnProperty('pid_closed_loop_period3')) {
        this.pid_closed_loop_period3 = initObj.pid_closed_loop_period3
      }
      else {
        this.pid_closed_loop_period3 = [];
      }
      if (initObj.hasOwnProperty('aux_pid_polarity')) {
        this.aux_pid_polarity = initObj.aux_pid_polarity
      }
      else {
        this.aux_pid_polarity = [];
      }
      if (initObj.hasOwnProperty('invert')) {
        this.invert = initObj.invert
      }
      else {
        this.invert = [];
      }
      if (initObj.hasOwnProperty('sensorPhase')) {
        this.sensorPhase = initObj.sensorPhase
      }
      else {
        this.sensorPhase = [];
      }
      if (initObj.hasOwnProperty('neutral_mode')) {
        this.neutral_mode = initObj.neutral_mode
      }
      else {
        this.neutral_mode = [];
      }
      if (initObj.hasOwnProperty('closed_loop_ramp')) {
        this.closed_loop_ramp = initObj.closed_loop_ramp
      }
      else {
        this.closed_loop_ramp = [];
      }
      if (initObj.hasOwnProperty('open_loop_ramp')) {
        this.open_loop_ramp = initObj.open_loop_ramp
      }
      else {
        this.open_loop_ramp = [];
      }
      if (initObj.hasOwnProperty('peak_output_forward')) {
        this.peak_output_forward = initObj.peak_output_forward
      }
      else {
        this.peak_output_forward = [];
      }
      if (initObj.hasOwnProperty('peak_output_reverse')) {
        this.peak_output_reverse = initObj.peak_output_reverse
      }
      else {
        this.peak_output_reverse = [];
      }
      if (initObj.hasOwnProperty('nominal_output_forward')) {
        this.nominal_output_forward = initObj.nominal_output_forward
      }
      else {
        this.nominal_output_forward = [];
      }
      if (initObj.hasOwnProperty('nominal_output_reverse')) {
        this.nominal_output_reverse = initObj.nominal_output_reverse
      }
      else {
        this.nominal_output_reverse = [];
      }
      if (initObj.hasOwnProperty('neutral_deadband')) {
        this.neutral_deadband = initObj.neutral_deadband
      }
      else {
        this.neutral_deadband = [];
      }
      if (initObj.hasOwnProperty('voltage_compensation_saturation')) {
        this.voltage_compensation_saturation = initObj.voltage_compensation_saturation
      }
      else {
        this.voltage_compensation_saturation = [];
      }
      if (initObj.hasOwnProperty('voltage_measurement_filter')) {
        this.voltage_measurement_filter = initObj.voltage_measurement_filter
      }
      else {
        this.voltage_measurement_filter = [];
      }
      if (initObj.hasOwnProperty('voltage_compensation_enable')) {
        this.voltage_compensation_enable = initObj.voltage_compensation_enable
      }
      else {
        this.voltage_compensation_enable = [];
      }
      if (initObj.hasOwnProperty('velocity_measurement_period')) {
        this.velocity_measurement_period = initObj.velocity_measurement_period
      }
      else {
        this.velocity_measurement_period = [];
      }
      if (initObj.hasOwnProperty('velocity_measurement_window')) {
        this.velocity_measurement_window = initObj.velocity_measurement_window
      }
      else {
        this.velocity_measurement_window = [];
      }
      if (initObj.hasOwnProperty('limit_switch_local_forward_source')) {
        this.limit_switch_local_forward_source = initObj.limit_switch_local_forward_source
      }
      else {
        this.limit_switch_local_forward_source = [];
      }
      if (initObj.hasOwnProperty('limit_switch_local_forward_normal')) {
        this.limit_switch_local_forward_normal = initObj.limit_switch_local_forward_normal
      }
      else {
        this.limit_switch_local_forward_normal = [];
      }
      if (initObj.hasOwnProperty('limit_switch_local_reverse_source')) {
        this.limit_switch_local_reverse_source = initObj.limit_switch_local_reverse_source
      }
      else {
        this.limit_switch_local_reverse_source = [];
      }
      if (initObj.hasOwnProperty('limit_switch_local_reverse_normal')) {
        this.limit_switch_local_reverse_normal = initObj.limit_switch_local_reverse_normal
      }
      else {
        this.limit_switch_local_reverse_normal = [];
      }
      if (initObj.hasOwnProperty('limit_switch_remote_forward_source')) {
        this.limit_switch_remote_forward_source = initObj.limit_switch_remote_forward_source
      }
      else {
        this.limit_switch_remote_forward_source = [];
      }
      if (initObj.hasOwnProperty('limit_switch_remote_forward_normal')) {
        this.limit_switch_remote_forward_normal = initObj.limit_switch_remote_forward_normal
      }
      else {
        this.limit_switch_remote_forward_normal = [];
      }
      if (initObj.hasOwnProperty('limit_switch_remote_forward_id')) {
        this.limit_switch_remote_forward_id = initObj.limit_switch_remote_forward_id
      }
      else {
        this.limit_switch_remote_forward_id = [];
      }
      if (initObj.hasOwnProperty('limit_switch_remote_reverse_source')) {
        this.limit_switch_remote_reverse_source = initObj.limit_switch_remote_reverse_source
      }
      else {
        this.limit_switch_remote_reverse_source = [];
      }
      if (initObj.hasOwnProperty('limit_switch_remote_reverse_normal')) {
        this.limit_switch_remote_reverse_normal = initObj.limit_switch_remote_reverse_normal
      }
      else {
        this.limit_switch_remote_reverse_normal = [];
      }
      if (initObj.hasOwnProperty('limit_switch_remote_reverse_id')) {
        this.limit_switch_remote_reverse_id = initObj.limit_switch_remote_reverse_id
      }
      else {
        this.limit_switch_remote_reverse_id = [];
      }
      if (initObj.hasOwnProperty('softlimit_forward_threshold')) {
        this.softlimit_forward_threshold = initObj.softlimit_forward_threshold
      }
      else {
        this.softlimit_forward_threshold = [];
      }
      if (initObj.hasOwnProperty('softlimit_forward_enable')) {
        this.softlimit_forward_enable = initObj.softlimit_forward_enable
      }
      else {
        this.softlimit_forward_enable = [];
      }
      if (initObj.hasOwnProperty('softlimit_reverse_threshold')) {
        this.softlimit_reverse_threshold = initObj.softlimit_reverse_threshold
      }
      else {
        this.softlimit_reverse_threshold = [];
      }
      if (initObj.hasOwnProperty('softlimit_reverse_enable')) {
        this.softlimit_reverse_enable = initObj.softlimit_reverse_enable
      }
      else {
        this.softlimit_reverse_enable = [];
      }
      if (initObj.hasOwnProperty('softlimits_override_enable')) {
        this.softlimits_override_enable = initObj.softlimits_override_enable
      }
      else {
        this.softlimits_override_enable = [];
      }
      if (initObj.hasOwnProperty('current_limit_peak_amps')) {
        this.current_limit_peak_amps = initObj.current_limit_peak_amps
      }
      else {
        this.current_limit_peak_amps = [];
      }
      if (initObj.hasOwnProperty('current_limit_peak_msec')) {
        this.current_limit_peak_msec = initObj.current_limit_peak_msec
      }
      else {
        this.current_limit_peak_msec = [];
      }
      if (initObj.hasOwnProperty('current_limit_continuous_amps')) {
        this.current_limit_continuous_amps = initObj.current_limit_continuous_amps
      }
      else {
        this.current_limit_continuous_amps = [];
      }
      if (initObj.hasOwnProperty('current_limit_enable')) {
        this.current_limit_enable = initObj.current_limit_enable
      }
      else {
        this.current_limit_enable = [];
      }
      if (initObj.hasOwnProperty('motion_cruise_velocity')) {
        this.motion_cruise_velocity = initObj.motion_cruise_velocity
      }
      else {
        this.motion_cruise_velocity = [];
      }
      if (initObj.hasOwnProperty('motion_acceleration')) {
        this.motion_acceleration = initObj.motion_acceleration
      }
      else {
        this.motion_acceleration = [];
      }
      if (initObj.hasOwnProperty('motion_s_curve_strength')) {
        this.motion_s_curve_strength = initObj.motion_s_curve_strength
      }
      else {
        this.motion_s_curve_strength = [];
      }
      if (initObj.hasOwnProperty('status_1_general_period')) {
        this.status_1_general_period = initObj.status_1_general_period
      }
      else {
        this.status_1_general_period = [];
      }
      if (initObj.hasOwnProperty('status_2_feedback0_period')) {
        this.status_2_feedback0_period = initObj.status_2_feedback0_period
      }
      else {
        this.status_2_feedback0_period = [];
      }
      if (initObj.hasOwnProperty('status_3_quadrature_period')) {
        this.status_3_quadrature_period = initObj.status_3_quadrature_period
      }
      else {
        this.status_3_quadrature_period = [];
      }
      if (initObj.hasOwnProperty('status_4_aintempvbat_period')) {
        this.status_4_aintempvbat_period = initObj.status_4_aintempvbat_period
      }
      else {
        this.status_4_aintempvbat_period = [];
      }
      if (initObj.hasOwnProperty('status_6_misc_period')) {
        this.status_6_misc_period = initObj.status_6_misc_period
      }
      else {
        this.status_6_misc_period = [];
      }
      if (initObj.hasOwnProperty('status_7_commstatus_period')) {
        this.status_7_commstatus_period = initObj.status_7_commstatus_period
      }
      else {
        this.status_7_commstatus_period = [];
      }
      if (initObj.hasOwnProperty('status_8_pulsewidth_period')) {
        this.status_8_pulsewidth_period = initObj.status_8_pulsewidth_period
      }
      else {
        this.status_8_pulsewidth_period = [];
      }
      if (initObj.hasOwnProperty('status_9_motprofbuffer_period')) {
        this.status_9_motprofbuffer_period = initObj.status_9_motprofbuffer_period
      }
      else {
        this.status_9_motprofbuffer_period = [];
      }
      if (initObj.hasOwnProperty('status_10_motionmagic_period')) {
        this.status_10_motionmagic_period = initObj.status_10_motionmagic_period
      }
      else {
        this.status_10_motionmagic_period = [];
      }
      if (initObj.hasOwnProperty('status_11_uartgadgeteer_period')) {
        this.status_11_uartgadgeteer_period = initObj.status_11_uartgadgeteer_period
      }
      else {
        this.status_11_uartgadgeteer_period = [];
      }
      if (initObj.hasOwnProperty('status_12_feedback1_period')) {
        this.status_12_feedback1_period = initObj.status_12_feedback1_period
      }
      else {
        this.status_12_feedback1_period = [];
      }
      if (initObj.hasOwnProperty('status_13_base_pidf0_period')) {
        this.status_13_base_pidf0_period = initObj.status_13_base_pidf0_period
      }
      else {
        this.status_13_base_pidf0_period = [];
      }
      if (initObj.hasOwnProperty('status_14_turn_pidf1_period')) {
        this.status_14_turn_pidf1_period = initObj.status_14_turn_pidf1_period
      }
      else {
        this.status_14_turn_pidf1_period = [];
      }
      if (initObj.hasOwnProperty('status_15_firmwareapistatus_period')) {
        this.status_15_firmwareapistatus_period = initObj.status_15_firmwareapistatus_period
      }
      else {
        this.status_15_firmwareapistatus_period = [];
      }
      if (initObj.hasOwnProperty('control_3_general_period')) {
        this.control_3_general_period = initObj.control_3_general_period
      }
      else {
        this.control_3_general_period = [];
      }
      if (initObj.hasOwnProperty('control_4_advanced_period')) {
        this.control_4_advanced_period = initObj.control_4_advanced_period
      }
      else {
        this.control_4_advanced_period = [];
      }
      if (initObj.hasOwnProperty('control_5_feedbackoutputoverride_period')) {
        this.control_5_feedbackoutputoverride_period = initObj.control_5_feedbackoutputoverride_period
      }
      else {
        this.control_5_feedbackoutputoverride_period = [];
      }
      if (initObj.hasOwnProperty('control_6_motprofaddtrajpoint_period')) {
        this.control_6_motprofaddtrajpoint_period = initObj.control_6_motprofaddtrajpoint_period
      }
      else {
        this.control_6_motprofaddtrajpoint_period = [];
      }
      if (initObj.hasOwnProperty('motion_profile_trajectory_period')) {
        this.motion_profile_trajectory_period = initObj.motion_profile_trajectory_period
      }
      else {
        this.motion_profile_trajectory_period = [];
      }
      if (initObj.hasOwnProperty('conversion_factor')) {
        this.conversion_factor = initObj.conversion_factor
      }
      else {
        this.conversion_factor = [];
      }
      if (initObj.hasOwnProperty('firmware_version')) {
        this.firmware_version = initObj.firmware_version
      }
      else {
        this.firmware_version = [];
      }
      if (initObj.hasOwnProperty('water_game')) {
        this.water_game = initObj.water_game
      }
      else {
        this.water_game = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TalonConfig
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [can_id]
    bufferOffset = _arraySerializer.int8(obj.can_id, buffer, bufferOffset, null);
    // Serialize message field [feedback_coefficient]
    bufferOffset = _arraySerializer.float64(obj.feedback_coefficient, buffer, bufferOffset, null);
    // Serialize message field [feedback_sensor]
    bufferOffset = _arraySerializer.string(obj.feedback_sensor, buffer, bufferOffset, null);
    // Serialize message field [remote_feedback_sensor]
    bufferOffset = _arraySerializer.string(obj.remote_feedback_sensor, buffer, bufferOffset, null);
    // Serialize message field [remote_feedback_device_id0]
    bufferOffset = _arraySerializer.int8(obj.remote_feedback_device_id0, buffer, bufferOffset, null);
    // Serialize message field [remote_feedback_filter0]
    bufferOffset = _arraySerializer.string(obj.remote_feedback_filter0, buffer, bufferOffset, null);
    // Serialize message field [remote_feedback_device_id1]
    bufferOffset = _arraySerializer.int8(obj.remote_feedback_device_id1, buffer, bufferOffset, null);
    // Serialize message field [remote_feedback_filter1]
    bufferOffset = _arraySerializer.string(obj.remote_feedback_filter1, buffer, bufferOffset, null);
    // Serialize message field [sensor_term_sum0]
    bufferOffset = _arraySerializer.string(obj.sensor_term_sum0, buffer, bufferOffset, null);
    // Serialize message field [sensor_term_sum1]
    bufferOffset = _arraySerializer.string(obj.sensor_term_sum1, buffer, bufferOffset, null);
    // Serialize message field [sensor_term_diff0]
    bufferOffset = _arraySerializer.string(obj.sensor_term_diff0, buffer, bufferOffset, null);
    // Serialize message field [sensor_term_diff1]
    bufferOffset = _arraySerializer.string(obj.sensor_term_diff1, buffer, bufferOffset, null);
    // Serialize message field [encoder_ticks_per_rotation]
    bufferOffset = _arraySerializer.int32(obj.encoder_ticks_per_rotation, buffer, bufferOffset, null);
    // Serialize message field [pid_slot]
    bufferOffset = _arraySerializer.int32(obj.pid_slot, buffer, bufferOffset, null);
    // Serialize message field [pid_p0]
    bufferOffset = _arraySerializer.float64(obj.pid_p0, buffer, bufferOffset, null);
    // Serialize message field [pid_i0]
    bufferOffset = _arraySerializer.float64(obj.pid_i0, buffer, bufferOffset, null);
    // Serialize message field [pid_d0]
    bufferOffset = _arraySerializer.float64(obj.pid_d0, buffer, bufferOffset, null);
    // Serialize message field [pid_f0]
    bufferOffset = _arraySerializer.float64(obj.pid_f0, buffer, bufferOffset, null);
    // Serialize message field [pid_izone0]
    bufferOffset = _arraySerializer.int32(obj.pid_izone0, buffer, bufferOffset, null);
    // Serialize message field [pid_allowable_closed_loop_error0]
    bufferOffset = _arraySerializer.int32(obj.pid_allowable_closed_loop_error0, buffer, bufferOffset, null);
    // Serialize message field [pid_max_integral_accumulator0]
    bufferOffset = _arraySerializer.float64(obj.pid_max_integral_accumulator0, buffer, bufferOffset, null);
    // Serialize message field [pid_closed_loop_peak_output0]
    bufferOffset = _arraySerializer.float64(obj.pid_closed_loop_peak_output0, buffer, bufferOffset, null);
    // Serialize message field [pid_closed_loop_period0]
    bufferOffset = _arraySerializer.int32(obj.pid_closed_loop_period0, buffer, bufferOffset, null);
    // Serialize message field [pid_p1]
    bufferOffset = _arraySerializer.float64(obj.pid_p1, buffer, bufferOffset, null);
    // Serialize message field [pid_i1]
    bufferOffset = _arraySerializer.float64(obj.pid_i1, buffer, bufferOffset, null);
    // Serialize message field [pid_d1]
    bufferOffset = _arraySerializer.float64(obj.pid_d1, buffer, bufferOffset, null);
    // Serialize message field [pid_f1]
    bufferOffset = _arraySerializer.float64(obj.pid_f1, buffer, bufferOffset, null);
    // Serialize message field [pid_izone1]
    bufferOffset = _arraySerializer.int32(obj.pid_izone1, buffer, bufferOffset, null);
    // Serialize message field [pid_allowable_closed_loop_error1]
    bufferOffset = _arraySerializer.int32(obj.pid_allowable_closed_loop_error1, buffer, bufferOffset, null);
    // Serialize message field [pid_max_integral_accumulator1]
    bufferOffset = _arraySerializer.float64(obj.pid_max_integral_accumulator1, buffer, bufferOffset, null);
    // Serialize message field [pid_closed_loop_peak_output1]
    bufferOffset = _arraySerializer.float64(obj.pid_closed_loop_peak_output1, buffer, bufferOffset, null);
    // Serialize message field [pid_closed_loop_period1]
    bufferOffset = _arraySerializer.int32(obj.pid_closed_loop_period1, buffer, bufferOffset, null);
    // Serialize message field [pid_p2]
    bufferOffset = _arraySerializer.float64(obj.pid_p2, buffer, bufferOffset, null);
    // Serialize message field [pid_i2]
    bufferOffset = _arraySerializer.float64(obj.pid_i2, buffer, bufferOffset, null);
    // Serialize message field [pid_d2]
    bufferOffset = _arraySerializer.float64(obj.pid_d2, buffer, bufferOffset, null);
    // Serialize message field [pid_f2]
    bufferOffset = _arraySerializer.float64(obj.pid_f2, buffer, bufferOffset, null);
    // Serialize message field [pid_izone2]
    bufferOffset = _arraySerializer.int32(obj.pid_izone2, buffer, bufferOffset, null);
    // Serialize message field [pid_allowable_closed_loop_error2]
    bufferOffset = _arraySerializer.int32(obj.pid_allowable_closed_loop_error2, buffer, bufferOffset, null);
    // Serialize message field [pid_max_integral_accumulator2]
    bufferOffset = _arraySerializer.float64(obj.pid_max_integral_accumulator2, buffer, bufferOffset, null);
    // Serialize message field [pid_closed_loop_peak_output2]
    bufferOffset = _arraySerializer.float64(obj.pid_closed_loop_peak_output2, buffer, bufferOffset, null);
    // Serialize message field [pid_closed_loop_period2]
    bufferOffset = _arraySerializer.int32(obj.pid_closed_loop_period2, buffer, bufferOffset, null);
    // Serialize message field [pid_p3]
    bufferOffset = _arraySerializer.float64(obj.pid_p3, buffer, bufferOffset, null);
    // Serialize message field [pid_i3]
    bufferOffset = _arraySerializer.float64(obj.pid_i3, buffer, bufferOffset, null);
    // Serialize message field [pid_d3]
    bufferOffset = _arraySerializer.float64(obj.pid_d3, buffer, bufferOffset, null);
    // Serialize message field [pid_f3]
    bufferOffset = _arraySerializer.float64(obj.pid_f3, buffer, bufferOffset, null);
    // Serialize message field [pid_izone3]
    bufferOffset = _arraySerializer.int32(obj.pid_izone3, buffer, bufferOffset, null);
    // Serialize message field [pid_allowable_closed_loop_error3]
    bufferOffset = _arraySerializer.int32(obj.pid_allowable_closed_loop_error3, buffer, bufferOffset, null);
    // Serialize message field [pid_max_integral_accumulator3]
    bufferOffset = _arraySerializer.float64(obj.pid_max_integral_accumulator3, buffer, bufferOffset, null);
    // Serialize message field [pid_closed_loop_peak_output3]
    bufferOffset = _arraySerializer.float64(obj.pid_closed_loop_peak_output3, buffer, bufferOffset, null);
    // Serialize message field [pid_closed_loop_period3]
    bufferOffset = _arraySerializer.int32(obj.pid_closed_loop_period3, buffer, bufferOffset, null);
    // Serialize message field [aux_pid_polarity]
    bufferOffset = _arraySerializer.bool(obj.aux_pid_polarity, buffer, bufferOffset, null);
    // Serialize message field [invert]
    bufferOffset = _arraySerializer.bool(obj.invert, buffer, bufferOffset, null);
    // Serialize message field [sensorPhase]
    bufferOffset = _arraySerializer.bool(obj.sensorPhase, buffer, bufferOffset, null);
    // Serialize message field [neutral_mode]
    bufferOffset = _arraySerializer.string(obj.neutral_mode, buffer, bufferOffset, null);
    // Serialize message field [closed_loop_ramp]
    bufferOffset = _arraySerializer.float64(obj.closed_loop_ramp, buffer, bufferOffset, null);
    // Serialize message field [open_loop_ramp]
    bufferOffset = _arraySerializer.float64(obj.open_loop_ramp, buffer, bufferOffset, null);
    // Serialize message field [peak_output_forward]
    bufferOffset = _arraySerializer.float64(obj.peak_output_forward, buffer, bufferOffset, null);
    // Serialize message field [peak_output_reverse]
    bufferOffset = _arraySerializer.float64(obj.peak_output_reverse, buffer, bufferOffset, null);
    // Serialize message field [nominal_output_forward]
    bufferOffset = _arraySerializer.float64(obj.nominal_output_forward, buffer, bufferOffset, null);
    // Serialize message field [nominal_output_reverse]
    bufferOffset = _arraySerializer.float64(obj.nominal_output_reverse, buffer, bufferOffset, null);
    // Serialize message field [neutral_deadband]
    bufferOffset = _arraySerializer.float64(obj.neutral_deadband, buffer, bufferOffset, null);
    // Serialize message field [voltage_compensation_saturation]
    bufferOffset = _arraySerializer.float64(obj.voltage_compensation_saturation, buffer, bufferOffset, null);
    // Serialize message field [voltage_measurement_filter]
    bufferOffset = _arraySerializer.int32(obj.voltage_measurement_filter, buffer, bufferOffset, null);
    // Serialize message field [voltage_compensation_enable]
    bufferOffset = _arraySerializer.bool(obj.voltage_compensation_enable, buffer, bufferOffset, null);
    // Serialize message field [velocity_measurement_period]
    bufferOffset = _arraySerializer.int32(obj.velocity_measurement_period, buffer, bufferOffset, null);
    // Serialize message field [velocity_measurement_window]
    bufferOffset = _arraySerializer.int32(obj.velocity_measurement_window, buffer, bufferOffset, null);
    // Serialize message field [limit_switch_local_forward_source]
    bufferOffset = _arraySerializer.string(obj.limit_switch_local_forward_source, buffer, bufferOffset, null);
    // Serialize message field [limit_switch_local_forward_normal]
    bufferOffset = _arraySerializer.string(obj.limit_switch_local_forward_normal, buffer, bufferOffset, null);
    // Serialize message field [limit_switch_local_reverse_source]
    bufferOffset = _arraySerializer.string(obj.limit_switch_local_reverse_source, buffer, bufferOffset, null);
    // Serialize message field [limit_switch_local_reverse_normal]
    bufferOffset = _arraySerializer.string(obj.limit_switch_local_reverse_normal, buffer, bufferOffset, null);
    // Serialize message field [limit_switch_remote_forward_source]
    bufferOffset = _arraySerializer.string(obj.limit_switch_remote_forward_source, buffer, bufferOffset, null);
    // Serialize message field [limit_switch_remote_forward_normal]
    bufferOffset = _arraySerializer.string(obj.limit_switch_remote_forward_normal, buffer, bufferOffset, null);
    // Serialize message field [limit_switch_remote_forward_id]
    bufferOffset = _arraySerializer.uint8(obj.limit_switch_remote_forward_id, buffer, bufferOffset, null);
    // Serialize message field [limit_switch_remote_reverse_source]
    bufferOffset = _arraySerializer.string(obj.limit_switch_remote_reverse_source, buffer, bufferOffset, null);
    // Serialize message field [limit_switch_remote_reverse_normal]
    bufferOffset = _arraySerializer.string(obj.limit_switch_remote_reverse_normal, buffer, bufferOffset, null);
    // Serialize message field [limit_switch_remote_reverse_id]
    bufferOffset = _arraySerializer.uint8(obj.limit_switch_remote_reverse_id, buffer, bufferOffset, null);
    // Serialize message field [softlimit_forward_threshold]
    bufferOffset = _arraySerializer.float64(obj.softlimit_forward_threshold, buffer, bufferOffset, null);
    // Serialize message field [softlimit_forward_enable]
    bufferOffset = _arraySerializer.bool(obj.softlimit_forward_enable, buffer, bufferOffset, null);
    // Serialize message field [softlimit_reverse_threshold]
    bufferOffset = _arraySerializer.float64(obj.softlimit_reverse_threshold, buffer, bufferOffset, null);
    // Serialize message field [softlimit_reverse_enable]
    bufferOffset = _arraySerializer.bool(obj.softlimit_reverse_enable, buffer, bufferOffset, null);
    // Serialize message field [softlimits_override_enable]
    bufferOffset = _arraySerializer.bool(obj.softlimits_override_enable, buffer, bufferOffset, null);
    // Serialize message field [current_limit_peak_amps]
    bufferOffset = _arraySerializer.int32(obj.current_limit_peak_amps, buffer, bufferOffset, null);
    // Serialize message field [current_limit_peak_msec]
    bufferOffset = _arraySerializer.int32(obj.current_limit_peak_msec, buffer, bufferOffset, null);
    // Serialize message field [current_limit_continuous_amps]
    bufferOffset = _arraySerializer.int32(obj.current_limit_continuous_amps, buffer, bufferOffset, null);
    // Serialize message field [current_limit_enable]
    bufferOffset = _arraySerializer.bool(obj.current_limit_enable, buffer, bufferOffset, null);
    // Serialize message field [motion_cruise_velocity]
    bufferOffset = _arraySerializer.float64(obj.motion_cruise_velocity, buffer, bufferOffset, null);
    // Serialize message field [motion_acceleration]
    bufferOffset = _arraySerializer.float64(obj.motion_acceleration, buffer, bufferOffset, null);
    // Serialize message field [motion_s_curve_strength]
    bufferOffset = _arraySerializer.uint8(obj.motion_s_curve_strength, buffer, bufferOffset, null);
    // Serialize message field [status_1_general_period]
    bufferOffset = _arraySerializer.uint8(obj.status_1_general_period, buffer, bufferOffset, null);
    // Serialize message field [status_2_feedback0_period]
    bufferOffset = _arraySerializer.uint8(obj.status_2_feedback0_period, buffer, bufferOffset, null);
    // Serialize message field [status_3_quadrature_period]
    bufferOffset = _arraySerializer.uint8(obj.status_3_quadrature_period, buffer, bufferOffset, null);
    // Serialize message field [status_4_aintempvbat_period]
    bufferOffset = _arraySerializer.uint8(obj.status_4_aintempvbat_period, buffer, bufferOffset, null);
    // Serialize message field [status_6_misc_period]
    bufferOffset = _arraySerializer.uint8(obj.status_6_misc_period, buffer, bufferOffset, null);
    // Serialize message field [status_7_commstatus_period]
    bufferOffset = _arraySerializer.uint8(obj.status_7_commstatus_period, buffer, bufferOffset, null);
    // Serialize message field [status_8_pulsewidth_period]
    bufferOffset = _arraySerializer.uint8(obj.status_8_pulsewidth_period, buffer, bufferOffset, null);
    // Serialize message field [status_9_motprofbuffer_period]
    bufferOffset = _arraySerializer.uint8(obj.status_9_motprofbuffer_period, buffer, bufferOffset, null);
    // Serialize message field [status_10_motionmagic_period]
    bufferOffset = _arraySerializer.uint8(obj.status_10_motionmagic_period, buffer, bufferOffset, null);
    // Serialize message field [status_11_uartgadgeteer_period]
    bufferOffset = _arraySerializer.uint8(obj.status_11_uartgadgeteer_period, buffer, bufferOffset, null);
    // Serialize message field [status_12_feedback1_period]
    bufferOffset = _arraySerializer.uint8(obj.status_12_feedback1_period, buffer, bufferOffset, null);
    // Serialize message field [status_13_base_pidf0_period]
    bufferOffset = _arraySerializer.uint8(obj.status_13_base_pidf0_period, buffer, bufferOffset, null);
    // Serialize message field [status_14_turn_pidf1_period]
    bufferOffset = _arraySerializer.uint8(obj.status_14_turn_pidf1_period, buffer, bufferOffset, null);
    // Serialize message field [status_15_firmwareapistatus_period]
    bufferOffset = _arraySerializer.uint8(obj.status_15_firmwareapistatus_period, buffer, bufferOffset, null);
    // Serialize message field [control_3_general_period]
    bufferOffset = _arraySerializer.uint8(obj.control_3_general_period, buffer, bufferOffset, null);
    // Serialize message field [control_4_advanced_period]
    bufferOffset = _arraySerializer.uint8(obj.control_4_advanced_period, buffer, bufferOffset, null);
    // Serialize message field [control_5_feedbackoutputoverride_period]
    bufferOffset = _arraySerializer.uint8(obj.control_5_feedbackoutputoverride_period, buffer, bufferOffset, null);
    // Serialize message field [control_6_motprofaddtrajpoint_period]
    bufferOffset = _arraySerializer.uint8(obj.control_6_motprofaddtrajpoint_period, buffer, bufferOffset, null);
    // Serialize message field [motion_profile_trajectory_period]
    bufferOffset = _arraySerializer.float64(obj.motion_profile_trajectory_period, buffer, bufferOffset, null);
    // Serialize message field [conversion_factor]
    bufferOffset = _arraySerializer.float64(obj.conversion_factor, buffer, bufferOffset, null);
    // Serialize message field [firmware_version]
    bufferOffset = _arraySerializer.string(obj.firmware_version, buffer, bufferOffset, null);
    // Serialize message field [water_game]
    bufferOffset = _arraySerializer.bool(obj.water_game, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TalonConfig
    let len;
    let data = new TalonConfig(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [can_id]
    data.can_id = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [feedback_coefficient]
    data.feedback_coefficient = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [feedback_sensor]
    data.feedback_sensor = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [remote_feedback_sensor]
    data.remote_feedback_sensor = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [remote_feedback_device_id0]
    data.remote_feedback_device_id0 = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [remote_feedback_filter0]
    data.remote_feedback_filter0 = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [remote_feedback_device_id1]
    data.remote_feedback_device_id1 = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [remote_feedback_filter1]
    data.remote_feedback_filter1 = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [sensor_term_sum0]
    data.sensor_term_sum0 = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [sensor_term_sum1]
    data.sensor_term_sum1 = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [sensor_term_diff0]
    data.sensor_term_diff0 = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [sensor_term_diff1]
    data.sensor_term_diff1 = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [encoder_ticks_per_rotation]
    data.encoder_ticks_per_rotation = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [pid_slot]
    data.pid_slot = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [pid_p0]
    data.pid_p0 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pid_i0]
    data.pid_i0 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pid_d0]
    data.pid_d0 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pid_f0]
    data.pid_f0 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pid_izone0]
    data.pid_izone0 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [pid_allowable_closed_loop_error0]
    data.pid_allowable_closed_loop_error0 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [pid_max_integral_accumulator0]
    data.pid_max_integral_accumulator0 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pid_closed_loop_peak_output0]
    data.pid_closed_loop_peak_output0 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pid_closed_loop_period0]
    data.pid_closed_loop_period0 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [pid_p1]
    data.pid_p1 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pid_i1]
    data.pid_i1 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pid_d1]
    data.pid_d1 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pid_f1]
    data.pid_f1 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pid_izone1]
    data.pid_izone1 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [pid_allowable_closed_loop_error1]
    data.pid_allowable_closed_loop_error1 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [pid_max_integral_accumulator1]
    data.pid_max_integral_accumulator1 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pid_closed_loop_peak_output1]
    data.pid_closed_loop_peak_output1 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pid_closed_loop_period1]
    data.pid_closed_loop_period1 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [pid_p2]
    data.pid_p2 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pid_i2]
    data.pid_i2 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pid_d2]
    data.pid_d2 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pid_f2]
    data.pid_f2 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pid_izone2]
    data.pid_izone2 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [pid_allowable_closed_loop_error2]
    data.pid_allowable_closed_loop_error2 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [pid_max_integral_accumulator2]
    data.pid_max_integral_accumulator2 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pid_closed_loop_peak_output2]
    data.pid_closed_loop_peak_output2 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pid_closed_loop_period2]
    data.pid_closed_loop_period2 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [pid_p3]
    data.pid_p3 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pid_i3]
    data.pid_i3 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pid_d3]
    data.pid_d3 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pid_f3]
    data.pid_f3 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pid_izone3]
    data.pid_izone3 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [pid_allowable_closed_loop_error3]
    data.pid_allowable_closed_loop_error3 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [pid_max_integral_accumulator3]
    data.pid_max_integral_accumulator3 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pid_closed_loop_peak_output3]
    data.pid_closed_loop_peak_output3 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pid_closed_loop_period3]
    data.pid_closed_loop_period3 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [aux_pid_polarity]
    data.aux_pid_polarity = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [invert]
    data.invert = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [sensorPhase]
    data.sensorPhase = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [neutral_mode]
    data.neutral_mode = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [closed_loop_ramp]
    data.closed_loop_ramp = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [open_loop_ramp]
    data.open_loop_ramp = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [peak_output_forward]
    data.peak_output_forward = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [peak_output_reverse]
    data.peak_output_reverse = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [nominal_output_forward]
    data.nominal_output_forward = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [nominal_output_reverse]
    data.nominal_output_reverse = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [neutral_deadband]
    data.neutral_deadband = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [voltage_compensation_saturation]
    data.voltage_compensation_saturation = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [voltage_measurement_filter]
    data.voltage_measurement_filter = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [voltage_compensation_enable]
    data.voltage_compensation_enable = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [velocity_measurement_period]
    data.velocity_measurement_period = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [velocity_measurement_window]
    data.velocity_measurement_window = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [limit_switch_local_forward_source]
    data.limit_switch_local_forward_source = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [limit_switch_local_forward_normal]
    data.limit_switch_local_forward_normal = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [limit_switch_local_reverse_source]
    data.limit_switch_local_reverse_source = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [limit_switch_local_reverse_normal]
    data.limit_switch_local_reverse_normal = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [limit_switch_remote_forward_source]
    data.limit_switch_remote_forward_source = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [limit_switch_remote_forward_normal]
    data.limit_switch_remote_forward_normal = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [limit_switch_remote_forward_id]
    data.limit_switch_remote_forward_id = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [limit_switch_remote_reverse_source]
    data.limit_switch_remote_reverse_source = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [limit_switch_remote_reverse_normal]
    data.limit_switch_remote_reverse_normal = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [limit_switch_remote_reverse_id]
    data.limit_switch_remote_reverse_id = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [softlimit_forward_threshold]
    data.softlimit_forward_threshold = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [softlimit_forward_enable]
    data.softlimit_forward_enable = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [softlimit_reverse_threshold]
    data.softlimit_reverse_threshold = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [softlimit_reverse_enable]
    data.softlimit_reverse_enable = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [softlimits_override_enable]
    data.softlimits_override_enable = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [current_limit_peak_amps]
    data.current_limit_peak_amps = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [current_limit_peak_msec]
    data.current_limit_peak_msec = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [current_limit_continuous_amps]
    data.current_limit_continuous_amps = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [current_limit_enable]
    data.current_limit_enable = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [motion_cruise_velocity]
    data.motion_cruise_velocity = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [motion_acceleration]
    data.motion_acceleration = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [motion_s_curve_strength]
    data.motion_s_curve_strength = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [status_1_general_period]
    data.status_1_general_period = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [status_2_feedback0_period]
    data.status_2_feedback0_period = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [status_3_quadrature_period]
    data.status_3_quadrature_period = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [status_4_aintempvbat_period]
    data.status_4_aintempvbat_period = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [status_6_misc_period]
    data.status_6_misc_period = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [status_7_commstatus_period]
    data.status_7_commstatus_period = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [status_8_pulsewidth_period]
    data.status_8_pulsewidth_period = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [status_9_motprofbuffer_period]
    data.status_9_motprofbuffer_period = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [status_10_motionmagic_period]
    data.status_10_motionmagic_period = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [status_11_uartgadgeteer_period]
    data.status_11_uartgadgeteer_period = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [status_12_feedback1_period]
    data.status_12_feedback1_period = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [status_13_base_pidf0_period]
    data.status_13_base_pidf0_period = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [status_14_turn_pidf1_period]
    data.status_14_turn_pidf1_period = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [status_15_firmwareapistatus_period]
    data.status_15_firmwareapistatus_period = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [control_3_general_period]
    data.control_3_general_period = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [control_4_advanced_period]
    data.control_4_advanced_period = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [control_5_feedbackoutputoverride_period]
    data.control_5_feedbackoutputoverride_period = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [control_6_motprofaddtrajpoint_period]
    data.control_6_motprofaddtrajpoint_period = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [motion_profile_trajectory_period]
    data.motion_profile_trajectory_period = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [conversion_factor]
    data.conversion_factor = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [firmware_version]
    data.firmware_version = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [water_game]
    data.water_game = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.name.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.can_id.length;
    length += 8 * object.feedback_coefficient.length;
    object.feedback_sensor.forEach((val) => {
      length += 4 + val.length;
    });
    object.remote_feedback_sensor.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.remote_feedback_device_id0.length;
    object.remote_feedback_filter0.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.remote_feedback_device_id1.length;
    object.remote_feedback_filter1.forEach((val) => {
      length += 4 + val.length;
    });
    object.sensor_term_sum0.forEach((val) => {
      length += 4 + val.length;
    });
    object.sensor_term_sum1.forEach((val) => {
      length += 4 + val.length;
    });
    object.sensor_term_diff0.forEach((val) => {
      length += 4 + val.length;
    });
    object.sensor_term_diff1.forEach((val) => {
      length += 4 + val.length;
    });
    length += 4 * object.encoder_ticks_per_rotation.length;
    length += 4 * object.pid_slot.length;
    length += 8 * object.pid_p0.length;
    length += 8 * object.pid_i0.length;
    length += 8 * object.pid_d0.length;
    length += 8 * object.pid_f0.length;
    length += 4 * object.pid_izone0.length;
    length += 4 * object.pid_allowable_closed_loop_error0.length;
    length += 8 * object.pid_max_integral_accumulator0.length;
    length += 8 * object.pid_closed_loop_peak_output0.length;
    length += 4 * object.pid_closed_loop_period0.length;
    length += 8 * object.pid_p1.length;
    length += 8 * object.pid_i1.length;
    length += 8 * object.pid_d1.length;
    length += 8 * object.pid_f1.length;
    length += 4 * object.pid_izone1.length;
    length += 4 * object.pid_allowable_closed_loop_error1.length;
    length += 8 * object.pid_max_integral_accumulator1.length;
    length += 8 * object.pid_closed_loop_peak_output1.length;
    length += 4 * object.pid_closed_loop_period1.length;
    length += 8 * object.pid_p2.length;
    length += 8 * object.pid_i2.length;
    length += 8 * object.pid_d2.length;
    length += 8 * object.pid_f2.length;
    length += 4 * object.pid_izone2.length;
    length += 4 * object.pid_allowable_closed_loop_error2.length;
    length += 8 * object.pid_max_integral_accumulator2.length;
    length += 8 * object.pid_closed_loop_peak_output2.length;
    length += 4 * object.pid_closed_loop_period2.length;
    length += 8 * object.pid_p3.length;
    length += 8 * object.pid_i3.length;
    length += 8 * object.pid_d3.length;
    length += 8 * object.pid_f3.length;
    length += 4 * object.pid_izone3.length;
    length += 4 * object.pid_allowable_closed_loop_error3.length;
    length += 8 * object.pid_max_integral_accumulator3.length;
    length += 8 * object.pid_closed_loop_peak_output3.length;
    length += 4 * object.pid_closed_loop_period3.length;
    length += object.aux_pid_polarity.length;
    length += object.invert.length;
    length += object.sensorPhase.length;
    object.neutral_mode.forEach((val) => {
      length += 4 + val.length;
    });
    length += 8 * object.closed_loop_ramp.length;
    length += 8 * object.open_loop_ramp.length;
    length += 8 * object.peak_output_forward.length;
    length += 8 * object.peak_output_reverse.length;
    length += 8 * object.nominal_output_forward.length;
    length += 8 * object.nominal_output_reverse.length;
    length += 8 * object.neutral_deadband.length;
    length += 8 * object.voltage_compensation_saturation.length;
    length += 4 * object.voltage_measurement_filter.length;
    length += object.voltage_compensation_enable.length;
    length += 4 * object.velocity_measurement_period.length;
    length += 4 * object.velocity_measurement_window.length;
    object.limit_switch_local_forward_source.forEach((val) => {
      length += 4 + val.length;
    });
    object.limit_switch_local_forward_normal.forEach((val) => {
      length += 4 + val.length;
    });
    object.limit_switch_local_reverse_source.forEach((val) => {
      length += 4 + val.length;
    });
    object.limit_switch_local_reverse_normal.forEach((val) => {
      length += 4 + val.length;
    });
    object.limit_switch_remote_forward_source.forEach((val) => {
      length += 4 + val.length;
    });
    object.limit_switch_remote_forward_normal.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.limit_switch_remote_forward_id.length;
    object.limit_switch_remote_reverse_source.forEach((val) => {
      length += 4 + val.length;
    });
    object.limit_switch_remote_reverse_normal.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.limit_switch_remote_reverse_id.length;
    length += 8 * object.softlimit_forward_threshold.length;
    length += object.softlimit_forward_enable.length;
    length += 8 * object.softlimit_reverse_threshold.length;
    length += object.softlimit_reverse_enable.length;
    length += object.softlimits_override_enable.length;
    length += 4 * object.current_limit_peak_amps.length;
    length += 4 * object.current_limit_peak_msec.length;
    length += 4 * object.current_limit_continuous_amps.length;
    length += object.current_limit_enable.length;
    length += 8 * object.motion_cruise_velocity.length;
    length += 8 * object.motion_acceleration.length;
    length += object.motion_s_curve_strength.length;
    length += object.status_1_general_period.length;
    length += object.status_2_feedback0_period.length;
    length += object.status_3_quadrature_period.length;
    length += object.status_4_aintempvbat_period.length;
    length += object.status_6_misc_period.length;
    length += object.status_7_commstatus_period.length;
    length += object.status_8_pulsewidth_period.length;
    length += object.status_9_motprofbuffer_period.length;
    length += object.status_10_motionmagic_period.length;
    length += object.status_11_uartgadgeteer_period.length;
    length += object.status_12_feedback1_period.length;
    length += object.status_13_base_pidf0_period.length;
    length += object.status_14_turn_pidf1_period.length;
    length += object.status_15_firmwareapistatus_period.length;
    length += object.control_3_general_period.length;
    length += object.control_4_advanced_period.length;
    length += object.control_5_feedbackoutputoverride_period.length;
    length += object.control_6_motprofaddtrajpoint_period.length;
    length += 8 * object.motion_profile_trajectory_period.length;
    length += 8 * object.conversion_factor.length;
    object.firmware_version.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.water_game.length;
    return length + 444;
  }

  static datatype() {
    // Returns string type for a message object
    return 'talon_state_msgs/TalonConfig';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c581b95d041ee8a7724c07ef2b96b2da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    string[] name
    int8[] can_id
    float64[] feedback_coefficient
    string[]  feedback_sensor
    string[]  remote_feedback_sensor
    int8[]    remote_feedback_device_id0
    string[]  remote_feedback_filter0
    int8[]    remote_feedback_device_id1
    string[]  remote_feedback_filter1
    string[]  sensor_term_sum0
    string[]  sensor_term_sum1
    string[]  sensor_term_diff0
    string[]  sensor_term_diff1
    int32[]   encoder_ticks_per_rotation
    int32[]   pid_slot
    float64[] pid_p0
    float64[] pid_i0
    float64[] pid_d0
    float64[] pid_f0
    int32[] pid_izone0
    int32[] pid_allowable_closed_loop_error0
    float64[] pid_max_integral_accumulator0
    float64[] pid_closed_loop_peak_output0
    int32[]   pid_closed_loop_period0
    float64[] pid_p1
    float64[] pid_i1
    float64[] pid_d1
    float64[] pid_f1
    int32[] pid_izone1
    int32[] pid_allowable_closed_loop_error1
    float64[] pid_max_integral_accumulator1
    float64[] pid_closed_loop_peak_output1
    int32[]   pid_closed_loop_period1
    float64[] pid_p2
    float64[] pid_i2
    float64[] pid_d2
    float64[] pid_f2
    int32[] pid_izone2
    int32[] pid_allowable_closed_loop_error2
    float64[] pid_max_integral_accumulator2
    float64[] pid_closed_loop_peak_output2
    int32[]   pid_closed_loop_period2
    float64[] pid_p3
    float64[] pid_i3
    float64[] pid_d3
    float64[] pid_f3
    int32[] pid_izone3
    int32[] pid_allowable_closed_loop_error3
    float64[] pid_max_integral_accumulator3
    float64[] pid_closed_loop_peak_output3
    int32[]   pid_closed_loop_period3
    bool[]    aux_pid_polarity
    bool[] invert
    bool[] sensorPhase
    string[] neutral_mode
    float64[] closed_loop_ramp
    float64[] open_loop_ramp
    float64[] peak_output_forward
    float64[] peak_output_reverse
    float64[] nominal_output_forward
    float64[] nominal_output_reverse
    float64[] neutral_deadband
    float64[] voltage_compensation_saturation
    int32[]   voltage_measurement_filter
    bool[]    voltage_compensation_enable
    int32[]   velocity_measurement_period
    int32[]   velocity_measurement_window
    string[]  limit_switch_local_forward_source
    string[]  limit_switch_local_forward_normal
    string[]  limit_switch_local_reverse_source
    string[]  limit_switch_local_reverse_normal
    string[]  limit_switch_remote_forward_source
    string[]  limit_switch_remote_forward_normal
    uint8[]   limit_switch_remote_forward_id
    string[]  limit_switch_remote_reverse_source
    string[]  limit_switch_remote_reverse_normal
    uint8[]   limit_switch_remote_reverse_id
    float64[] softlimit_forward_threshold
    bool[]    softlimit_forward_enable
    float64[] softlimit_reverse_threshold
    bool[]    softlimit_reverse_enable
    bool[]    softlimits_override_enable
    int32[]   current_limit_peak_amps
    int32[]   current_limit_peak_msec
    int32[]   current_limit_continuous_amps
    bool[]    current_limit_enable
    float64[] motion_cruise_velocity
    float64[] motion_acceleration
    uint8[]   motion_s_curve_strength
    uint8[]   status_1_general_period
    uint8[]   status_2_feedback0_period
    uint8[]   status_3_quadrature_period
    uint8[]   status_4_aintempvbat_period
    uint8[]   status_6_misc_period
    uint8[]   status_7_commstatus_period
    uint8[]   status_8_pulsewidth_period
    uint8[]   status_9_motprofbuffer_period
    uint8[]   status_10_motionmagic_period
    uint8[]   status_11_uartgadgeteer_period
    uint8[]   status_12_feedback1_period
    uint8[]   status_13_base_pidf0_period
    uint8[]   status_14_turn_pidf1_period
    uint8[]   status_15_firmwareapistatus_period
    uint8[]   control_3_general_period
    uint8[]   control_4_advanced_period
    uint8[]   control_5_feedbackoutputoverride_period
    uint8[]   control_6_motprofaddtrajpoint_period
    float64[] motion_profile_trajectory_period
    float64[] conversion_factor
    string[]  firmware_version
    bool[]    water_game
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TalonConfig(null);
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

    if (msg.can_id !== undefined) {
      resolved.can_id = msg.can_id;
    }
    else {
      resolved.can_id = []
    }

    if (msg.feedback_coefficient !== undefined) {
      resolved.feedback_coefficient = msg.feedback_coefficient;
    }
    else {
      resolved.feedback_coefficient = []
    }

    if (msg.feedback_sensor !== undefined) {
      resolved.feedback_sensor = msg.feedback_sensor;
    }
    else {
      resolved.feedback_sensor = []
    }

    if (msg.remote_feedback_sensor !== undefined) {
      resolved.remote_feedback_sensor = msg.remote_feedback_sensor;
    }
    else {
      resolved.remote_feedback_sensor = []
    }

    if (msg.remote_feedback_device_id0 !== undefined) {
      resolved.remote_feedback_device_id0 = msg.remote_feedback_device_id0;
    }
    else {
      resolved.remote_feedback_device_id0 = []
    }

    if (msg.remote_feedback_filter0 !== undefined) {
      resolved.remote_feedback_filter0 = msg.remote_feedback_filter0;
    }
    else {
      resolved.remote_feedback_filter0 = []
    }

    if (msg.remote_feedback_device_id1 !== undefined) {
      resolved.remote_feedback_device_id1 = msg.remote_feedback_device_id1;
    }
    else {
      resolved.remote_feedback_device_id1 = []
    }

    if (msg.remote_feedback_filter1 !== undefined) {
      resolved.remote_feedback_filter1 = msg.remote_feedback_filter1;
    }
    else {
      resolved.remote_feedback_filter1 = []
    }

    if (msg.sensor_term_sum0 !== undefined) {
      resolved.sensor_term_sum0 = msg.sensor_term_sum0;
    }
    else {
      resolved.sensor_term_sum0 = []
    }

    if (msg.sensor_term_sum1 !== undefined) {
      resolved.sensor_term_sum1 = msg.sensor_term_sum1;
    }
    else {
      resolved.sensor_term_sum1 = []
    }

    if (msg.sensor_term_diff0 !== undefined) {
      resolved.sensor_term_diff0 = msg.sensor_term_diff0;
    }
    else {
      resolved.sensor_term_diff0 = []
    }

    if (msg.sensor_term_diff1 !== undefined) {
      resolved.sensor_term_diff1 = msg.sensor_term_diff1;
    }
    else {
      resolved.sensor_term_diff1 = []
    }

    if (msg.encoder_ticks_per_rotation !== undefined) {
      resolved.encoder_ticks_per_rotation = msg.encoder_ticks_per_rotation;
    }
    else {
      resolved.encoder_ticks_per_rotation = []
    }

    if (msg.pid_slot !== undefined) {
      resolved.pid_slot = msg.pid_slot;
    }
    else {
      resolved.pid_slot = []
    }

    if (msg.pid_p0 !== undefined) {
      resolved.pid_p0 = msg.pid_p0;
    }
    else {
      resolved.pid_p0 = []
    }

    if (msg.pid_i0 !== undefined) {
      resolved.pid_i0 = msg.pid_i0;
    }
    else {
      resolved.pid_i0 = []
    }

    if (msg.pid_d0 !== undefined) {
      resolved.pid_d0 = msg.pid_d0;
    }
    else {
      resolved.pid_d0 = []
    }

    if (msg.pid_f0 !== undefined) {
      resolved.pid_f0 = msg.pid_f0;
    }
    else {
      resolved.pid_f0 = []
    }

    if (msg.pid_izone0 !== undefined) {
      resolved.pid_izone0 = msg.pid_izone0;
    }
    else {
      resolved.pid_izone0 = []
    }

    if (msg.pid_allowable_closed_loop_error0 !== undefined) {
      resolved.pid_allowable_closed_loop_error0 = msg.pid_allowable_closed_loop_error0;
    }
    else {
      resolved.pid_allowable_closed_loop_error0 = []
    }

    if (msg.pid_max_integral_accumulator0 !== undefined) {
      resolved.pid_max_integral_accumulator0 = msg.pid_max_integral_accumulator0;
    }
    else {
      resolved.pid_max_integral_accumulator0 = []
    }

    if (msg.pid_closed_loop_peak_output0 !== undefined) {
      resolved.pid_closed_loop_peak_output0 = msg.pid_closed_loop_peak_output0;
    }
    else {
      resolved.pid_closed_loop_peak_output0 = []
    }

    if (msg.pid_closed_loop_period0 !== undefined) {
      resolved.pid_closed_loop_period0 = msg.pid_closed_loop_period0;
    }
    else {
      resolved.pid_closed_loop_period0 = []
    }

    if (msg.pid_p1 !== undefined) {
      resolved.pid_p1 = msg.pid_p1;
    }
    else {
      resolved.pid_p1 = []
    }

    if (msg.pid_i1 !== undefined) {
      resolved.pid_i1 = msg.pid_i1;
    }
    else {
      resolved.pid_i1 = []
    }

    if (msg.pid_d1 !== undefined) {
      resolved.pid_d1 = msg.pid_d1;
    }
    else {
      resolved.pid_d1 = []
    }

    if (msg.pid_f1 !== undefined) {
      resolved.pid_f1 = msg.pid_f1;
    }
    else {
      resolved.pid_f1 = []
    }

    if (msg.pid_izone1 !== undefined) {
      resolved.pid_izone1 = msg.pid_izone1;
    }
    else {
      resolved.pid_izone1 = []
    }

    if (msg.pid_allowable_closed_loop_error1 !== undefined) {
      resolved.pid_allowable_closed_loop_error1 = msg.pid_allowable_closed_loop_error1;
    }
    else {
      resolved.pid_allowable_closed_loop_error1 = []
    }

    if (msg.pid_max_integral_accumulator1 !== undefined) {
      resolved.pid_max_integral_accumulator1 = msg.pid_max_integral_accumulator1;
    }
    else {
      resolved.pid_max_integral_accumulator1 = []
    }

    if (msg.pid_closed_loop_peak_output1 !== undefined) {
      resolved.pid_closed_loop_peak_output1 = msg.pid_closed_loop_peak_output1;
    }
    else {
      resolved.pid_closed_loop_peak_output1 = []
    }

    if (msg.pid_closed_loop_period1 !== undefined) {
      resolved.pid_closed_loop_period1 = msg.pid_closed_loop_period1;
    }
    else {
      resolved.pid_closed_loop_period1 = []
    }

    if (msg.pid_p2 !== undefined) {
      resolved.pid_p2 = msg.pid_p2;
    }
    else {
      resolved.pid_p2 = []
    }

    if (msg.pid_i2 !== undefined) {
      resolved.pid_i2 = msg.pid_i2;
    }
    else {
      resolved.pid_i2 = []
    }

    if (msg.pid_d2 !== undefined) {
      resolved.pid_d2 = msg.pid_d2;
    }
    else {
      resolved.pid_d2 = []
    }

    if (msg.pid_f2 !== undefined) {
      resolved.pid_f2 = msg.pid_f2;
    }
    else {
      resolved.pid_f2 = []
    }

    if (msg.pid_izone2 !== undefined) {
      resolved.pid_izone2 = msg.pid_izone2;
    }
    else {
      resolved.pid_izone2 = []
    }

    if (msg.pid_allowable_closed_loop_error2 !== undefined) {
      resolved.pid_allowable_closed_loop_error2 = msg.pid_allowable_closed_loop_error2;
    }
    else {
      resolved.pid_allowable_closed_loop_error2 = []
    }

    if (msg.pid_max_integral_accumulator2 !== undefined) {
      resolved.pid_max_integral_accumulator2 = msg.pid_max_integral_accumulator2;
    }
    else {
      resolved.pid_max_integral_accumulator2 = []
    }

    if (msg.pid_closed_loop_peak_output2 !== undefined) {
      resolved.pid_closed_loop_peak_output2 = msg.pid_closed_loop_peak_output2;
    }
    else {
      resolved.pid_closed_loop_peak_output2 = []
    }

    if (msg.pid_closed_loop_period2 !== undefined) {
      resolved.pid_closed_loop_period2 = msg.pid_closed_loop_period2;
    }
    else {
      resolved.pid_closed_loop_period2 = []
    }

    if (msg.pid_p3 !== undefined) {
      resolved.pid_p3 = msg.pid_p3;
    }
    else {
      resolved.pid_p3 = []
    }

    if (msg.pid_i3 !== undefined) {
      resolved.pid_i3 = msg.pid_i3;
    }
    else {
      resolved.pid_i3 = []
    }

    if (msg.pid_d3 !== undefined) {
      resolved.pid_d3 = msg.pid_d3;
    }
    else {
      resolved.pid_d3 = []
    }

    if (msg.pid_f3 !== undefined) {
      resolved.pid_f3 = msg.pid_f3;
    }
    else {
      resolved.pid_f3 = []
    }

    if (msg.pid_izone3 !== undefined) {
      resolved.pid_izone3 = msg.pid_izone3;
    }
    else {
      resolved.pid_izone3 = []
    }

    if (msg.pid_allowable_closed_loop_error3 !== undefined) {
      resolved.pid_allowable_closed_loop_error3 = msg.pid_allowable_closed_loop_error3;
    }
    else {
      resolved.pid_allowable_closed_loop_error3 = []
    }

    if (msg.pid_max_integral_accumulator3 !== undefined) {
      resolved.pid_max_integral_accumulator3 = msg.pid_max_integral_accumulator3;
    }
    else {
      resolved.pid_max_integral_accumulator3 = []
    }

    if (msg.pid_closed_loop_peak_output3 !== undefined) {
      resolved.pid_closed_loop_peak_output3 = msg.pid_closed_loop_peak_output3;
    }
    else {
      resolved.pid_closed_loop_peak_output3 = []
    }

    if (msg.pid_closed_loop_period3 !== undefined) {
      resolved.pid_closed_loop_period3 = msg.pid_closed_loop_period3;
    }
    else {
      resolved.pid_closed_loop_period3 = []
    }

    if (msg.aux_pid_polarity !== undefined) {
      resolved.aux_pid_polarity = msg.aux_pid_polarity;
    }
    else {
      resolved.aux_pid_polarity = []
    }

    if (msg.invert !== undefined) {
      resolved.invert = msg.invert;
    }
    else {
      resolved.invert = []
    }

    if (msg.sensorPhase !== undefined) {
      resolved.sensorPhase = msg.sensorPhase;
    }
    else {
      resolved.sensorPhase = []
    }

    if (msg.neutral_mode !== undefined) {
      resolved.neutral_mode = msg.neutral_mode;
    }
    else {
      resolved.neutral_mode = []
    }

    if (msg.closed_loop_ramp !== undefined) {
      resolved.closed_loop_ramp = msg.closed_loop_ramp;
    }
    else {
      resolved.closed_loop_ramp = []
    }

    if (msg.open_loop_ramp !== undefined) {
      resolved.open_loop_ramp = msg.open_loop_ramp;
    }
    else {
      resolved.open_loop_ramp = []
    }

    if (msg.peak_output_forward !== undefined) {
      resolved.peak_output_forward = msg.peak_output_forward;
    }
    else {
      resolved.peak_output_forward = []
    }

    if (msg.peak_output_reverse !== undefined) {
      resolved.peak_output_reverse = msg.peak_output_reverse;
    }
    else {
      resolved.peak_output_reverse = []
    }

    if (msg.nominal_output_forward !== undefined) {
      resolved.nominal_output_forward = msg.nominal_output_forward;
    }
    else {
      resolved.nominal_output_forward = []
    }

    if (msg.nominal_output_reverse !== undefined) {
      resolved.nominal_output_reverse = msg.nominal_output_reverse;
    }
    else {
      resolved.nominal_output_reverse = []
    }

    if (msg.neutral_deadband !== undefined) {
      resolved.neutral_deadband = msg.neutral_deadband;
    }
    else {
      resolved.neutral_deadband = []
    }

    if (msg.voltage_compensation_saturation !== undefined) {
      resolved.voltage_compensation_saturation = msg.voltage_compensation_saturation;
    }
    else {
      resolved.voltage_compensation_saturation = []
    }

    if (msg.voltage_measurement_filter !== undefined) {
      resolved.voltage_measurement_filter = msg.voltage_measurement_filter;
    }
    else {
      resolved.voltage_measurement_filter = []
    }

    if (msg.voltage_compensation_enable !== undefined) {
      resolved.voltage_compensation_enable = msg.voltage_compensation_enable;
    }
    else {
      resolved.voltage_compensation_enable = []
    }

    if (msg.velocity_measurement_period !== undefined) {
      resolved.velocity_measurement_period = msg.velocity_measurement_period;
    }
    else {
      resolved.velocity_measurement_period = []
    }

    if (msg.velocity_measurement_window !== undefined) {
      resolved.velocity_measurement_window = msg.velocity_measurement_window;
    }
    else {
      resolved.velocity_measurement_window = []
    }

    if (msg.limit_switch_local_forward_source !== undefined) {
      resolved.limit_switch_local_forward_source = msg.limit_switch_local_forward_source;
    }
    else {
      resolved.limit_switch_local_forward_source = []
    }

    if (msg.limit_switch_local_forward_normal !== undefined) {
      resolved.limit_switch_local_forward_normal = msg.limit_switch_local_forward_normal;
    }
    else {
      resolved.limit_switch_local_forward_normal = []
    }

    if (msg.limit_switch_local_reverse_source !== undefined) {
      resolved.limit_switch_local_reverse_source = msg.limit_switch_local_reverse_source;
    }
    else {
      resolved.limit_switch_local_reverse_source = []
    }

    if (msg.limit_switch_local_reverse_normal !== undefined) {
      resolved.limit_switch_local_reverse_normal = msg.limit_switch_local_reverse_normal;
    }
    else {
      resolved.limit_switch_local_reverse_normal = []
    }

    if (msg.limit_switch_remote_forward_source !== undefined) {
      resolved.limit_switch_remote_forward_source = msg.limit_switch_remote_forward_source;
    }
    else {
      resolved.limit_switch_remote_forward_source = []
    }

    if (msg.limit_switch_remote_forward_normal !== undefined) {
      resolved.limit_switch_remote_forward_normal = msg.limit_switch_remote_forward_normal;
    }
    else {
      resolved.limit_switch_remote_forward_normal = []
    }

    if (msg.limit_switch_remote_forward_id !== undefined) {
      resolved.limit_switch_remote_forward_id = msg.limit_switch_remote_forward_id;
    }
    else {
      resolved.limit_switch_remote_forward_id = []
    }

    if (msg.limit_switch_remote_reverse_source !== undefined) {
      resolved.limit_switch_remote_reverse_source = msg.limit_switch_remote_reverse_source;
    }
    else {
      resolved.limit_switch_remote_reverse_source = []
    }

    if (msg.limit_switch_remote_reverse_normal !== undefined) {
      resolved.limit_switch_remote_reverse_normal = msg.limit_switch_remote_reverse_normal;
    }
    else {
      resolved.limit_switch_remote_reverse_normal = []
    }

    if (msg.limit_switch_remote_reverse_id !== undefined) {
      resolved.limit_switch_remote_reverse_id = msg.limit_switch_remote_reverse_id;
    }
    else {
      resolved.limit_switch_remote_reverse_id = []
    }

    if (msg.softlimit_forward_threshold !== undefined) {
      resolved.softlimit_forward_threshold = msg.softlimit_forward_threshold;
    }
    else {
      resolved.softlimit_forward_threshold = []
    }

    if (msg.softlimit_forward_enable !== undefined) {
      resolved.softlimit_forward_enable = msg.softlimit_forward_enable;
    }
    else {
      resolved.softlimit_forward_enable = []
    }

    if (msg.softlimit_reverse_threshold !== undefined) {
      resolved.softlimit_reverse_threshold = msg.softlimit_reverse_threshold;
    }
    else {
      resolved.softlimit_reverse_threshold = []
    }

    if (msg.softlimit_reverse_enable !== undefined) {
      resolved.softlimit_reverse_enable = msg.softlimit_reverse_enable;
    }
    else {
      resolved.softlimit_reverse_enable = []
    }

    if (msg.softlimits_override_enable !== undefined) {
      resolved.softlimits_override_enable = msg.softlimits_override_enable;
    }
    else {
      resolved.softlimits_override_enable = []
    }

    if (msg.current_limit_peak_amps !== undefined) {
      resolved.current_limit_peak_amps = msg.current_limit_peak_amps;
    }
    else {
      resolved.current_limit_peak_amps = []
    }

    if (msg.current_limit_peak_msec !== undefined) {
      resolved.current_limit_peak_msec = msg.current_limit_peak_msec;
    }
    else {
      resolved.current_limit_peak_msec = []
    }

    if (msg.current_limit_continuous_amps !== undefined) {
      resolved.current_limit_continuous_amps = msg.current_limit_continuous_amps;
    }
    else {
      resolved.current_limit_continuous_amps = []
    }

    if (msg.current_limit_enable !== undefined) {
      resolved.current_limit_enable = msg.current_limit_enable;
    }
    else {
      resolved.current_limit_enable = []
    }

    if (msg.motion_cruise_velocity !== undefined) {
      resolved.motion_cruise_velocity = msg.motion_cruise_velocity;
    }
    else {
      resolved.motion_cruise_velocity = []
    }

    if (msg.motion_acceleration !== undefined) {
      resolved.motion_acceleration = msg.motion_acceleration;
    }
    else {
      resolved.motion_acceleration = []
    }

    if (msg.motion_s_curve_strength !== undefined) {
      resolved.motion_s_curve_strength = msg.motion_s_curve_strength;
    }
    else {
      resolved.motion_s_curve_strength = []
    }

    if (msg.status_1_general_period !== undefined) {
      resolved.status_1_general_period = msg.status_1_general_period;
    }
    else {
      resolved.status_1_general_period = []
    }

    if (msg.status_2_feedback0_period !== undefined) {
      resolved.status_2_feedback0_period = msg.status_2_feedback0_period;
    }
    else {
      resolved.status_2_feedback0_period = []
    }

    if (msg.status_3_quadrature_period !== undefined) {
      resolved.status_3_quadrature_period = msg.status_3_quadrature_period;
    }
    else {
      resolved.status_3_quadrature_period = []
    }

    if (msg.status_4_aintempvbat_period !== undefined) {
      resolved.status_4_aintempvbat_period = msg.status_4_aintempvbat_period;
    }
    else {
      resolved.status_4_aintempvbat_period = []
    }

    if (msg.status_6_misc_period !== undefined) {
      resolved.status_6_misc_period = msg.status_6_misc_period;
    }
    else {
      resolved.status_6_misc_period = []
    }

    if (msg.status_7_commstatus_period !== undefined) {
      resolved.status_7_commstatus_period = msg.status_7_commstatus_period;
    }
    else {
      resolved.status_7_commstatus_period = []
    }

    if (msg.status_8_pulsewidth_period !== undefined) {
      resolved.status_8_pulsewidth_period = msg.status_8_pulsewidth_period;
    }
    else {
      resolved.status_8_pulsewidth_period = []
    }

    if (msg.status_9_motprofbuffer_period !== undefined) {
      resolved.status_9_motprofbuffer_period = msg.status_9_motprofbuffer_period;
    }
    else {
      resolved.status_9_motprofbuffer_period = []
    }

    if (msg.status_10_motionmagic_period !== undefined) {
      resolved.status_10_motionmagic_period = msg.status_10_motionmagic_period;
    }
    else {
      resolved.status_10_motionmagic_period = []
    }

    if (msg.status_11_uartgadgeteer_period !== undefined) {
      resolved.status_11_uartgadgeteer_period = msg.status_11_uartgadgeteer_period;
    }
    else {
      resolved.status_11_uartgadgeteer_period = []
    }

    if (msg.status_12_feedback1_period !== undefined) {
      resolved.status_12_feedback1_period = msg.status_12_feedback1_period;
    }
    else {
      resolved.status_12_feedback1_period = []
    }

    if (msg.status_13_base_pidf0_period !== undefined) {
      resolved.status_13_base_pidf0_period = msg.status_13_base_pidf0_period;
    }
    else {
      resolved.status_13_base_pidf0_period = []
    }

    if (msg.status_14_turn_pidf1_period !== undefined) {
      resolved.status_14_turn_pidf1_period = msg.status_14_turn_pidf1_period;
    }
    else {
      resolved.status_14_turn_pidf1_period = []
    }

    if (msg.status_15_firmwareapistatus_period !== undefined) {
      resolved.status_15_firmwareapistatus_period = msg.status_15_firmwareapistatus_period;
    }
    else {
      resolved.status_15_firmwareapistatus_period = []
    }

    if (msg.control_3_general_period !== undefined) {
      resolved.control_3_general_period = msg.control_3_general_period;
    }
    else {
      resolved.control_3_general_period = []
    }

    if (msg.control_4_advanced_period !== undefined) {
      resolved.control_4_advanced_period = msg.control_4_advanced_period;
    }
    else {
      resolved.control_4_advanced_period = []
    }

    if (msg.control_5_feedbackoutputoverride_period !== undefined) {
      resolved.control_5_feedbackoutputoverride_period = msg.control_5_feedbackoutputoverride_period;
    }
    else {
      resolved.control_5_feedbackoutputoverride_period = []
    }

    if (msg.control_6_motprofaddtrajpoint_period !== undefined) {
      resolved.control_6_motprofaddtrajpoint_period = msg.control_6_motprofaddtrajpoint_period;
    }
    else {
      resolved.control_6_motprofaddtrajpoint_period = []
    }

    if (msg.motion_profile_trajectory_period !== undefined) {
      resolved.motion_profile_trajectory_period = msg.motion_profile_trajectory_period;
    }
    else {
      resolved.motion_profile_trajectory_period = []
    }

    if (msg.conversion_factor !== undefined) {
      resolved.conversion_factor = msg.conversion_factor;
    }
    else {
      resolved.conversion_factor = []
    }

    if (msg.firmware_version !== undefined) {
      resolved.firmware_version = msg.firmware_version;
    }
    else {
      resolved.firmware_version = []
    }

    if (msg.water_game !== undefined) {
      resolved.water_game = msg.water_game;
    }
    else {
      resolved.water_game = []
    }

    return resolved;
    }
};

module.exports = TalonConfig;
