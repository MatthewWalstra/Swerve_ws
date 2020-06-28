;; Auto-generated. Do not edit!


(when (boundp 'talon_state_msgs::TalonConfig)
  (if (not (find-package "TALON_STATE_MSGS"))
    (make-package "TALON_STATE_MSGS"))
  (shadow 'TalonConfig (find-package "TALON_STATE_MSGS")))
(unless (find-package "TALON_STATE_MSGS::TALONCONFIG")
  (make-package "TALON_STATE_MSGS::TALONCONFIG"))

(in-package "ROS")
;;//! \htmlinclude TalonConfig.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass talon_state_msgs::TalonConfig
  :super ros::object
  :slots (_header _name _can_id _feedback_coefficient _feedback_sensor _remote_feedback_sensor _remote_feedback_device_id0 _remote_feedback_filter0 _remote_feedback_device_id1 _remote_feedback_filter1 _sensor_term_sum0 _sensor_term_sum1 _sensor_term_diff0 _sensor_term_diff1 _encoder_ticks_per_rotation _pid_slot _pid_p0 _pid_i0 _pid_d0 _pid_f0 _pid_izone0 _pid_allowable_closed_loop_error0 _pid_max_integral_accumulator0 _pid_closed_loop_peak_output0 _pid_closed_loop_period0 _pid_p1 _pid_i1 _pid_d1 _pid_f1 _pid_izone1 _pid_allowable_closed_loop_error1 _pid_max_integral_accumulator1 _pid_closed_loop_peak_output1 _pid_closed_loop_period1 _pid_p2 _pid_i2 _pid_d2 _pid_f2 _pid_izone2 _pid_allowable_closed_loop_error2 _pid_max_integral_accumulator2 _pid_closed_loop_peak_output2 _pid_closed_loop_period2 _pid_p3 _pid_i3 _pid_d3 _pid_f3 _pid_izone3 _pid_allowable_closed_loop_error3 _pid_max_integral_accumulator3 _pid_closed_loop_peak_output3 _pid_closed_loop_period3 _aux_pid_polarity _invert _sensorPhase _neutral_mode _closed_loop_ramp _open_loop_ramp _peak_output_forward _peak_output_reverse _nominal_output_forward _nominal_output_reverse _neutral_deadband _voltage_compensation_saturation _voltage_measurement_filter _voltage_compensation_enable _velocity_measurement_period _velocity_measurement_window _limit_switch_local_forward_source _limit_switch_local_forward_normal _limit_switch_local_reverse_source _limit_switch_local_reverse_normal _limit_switch_remote_forward_source _limit_switch_remote_forward_normal _limit_switch_remote_forward_id _limit_switch_remote_reverse_source _limit_switch_remote_reverse_normal _limit_switch_remote_reverse_id _softlimit_forward_threshold _softlimit_forward_enable _softlimit_reverse_threshold _softlimit_reverse_enable _softlimits_override_enable _current_limit_peak_amps _current_limit_peak_msec _current_limit_continuous_amps _current_limit_enable _motion_cruise_velocity _motion_acceleration _motion_s_curve_strength _status_1_general_period _status_2_feedback0_period _status_3_quadrature_period _status_4_aintempvbat_period _status_6_misc_period _status_7_commstatus_period _status_8_pulsewidth_period _status_9_motprofbuffer_period _status_10_motionmagic_period _status_11_uartgadgeteer_period _status_12_feedback1_period _status_13_base_pidf0_period _status_14_turn_pidf1_period _status_15_firmwareapistatus_period _control_3_general_period _control_4_advanced_period _control_5_feedbackoutputoverride_period _control_6_motprofaddtrajpoint_period _motion_profile_trajectory_period _conversion_factor _firmware_version _water_game ))

(defmethod talon_state_msgs::TalonConfig
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:can_id __can_id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:feedback_coefficient __feedback_coefficient) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:feedback_sensor __feedback_sensor) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:remote_feedback_sensor __remote_feedback_sensor) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:remote_feedback_device_id0 __remote_feedback_device_id0) (make-array 0 :initial-element 0 :element-type :integer))
    ((:remote_feedback_filter0 __remote_feedback_filter0) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:remote_feedback_device_id1 __remote_feedback_device_id1) (make-array 0 :initial-element 0 :element-type :integer))
    ((:remote_feedback_filter1 __remote_feedback_filter1) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:sensor_term_sum0 __sensor_term_sum0) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:sensor_term_sum1 __sensor_term_sum1) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:sensor_term_diff0 __sensor_term_diff0) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:sensor_term_diff1 __sensor_term_diff1) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:encoder_ticks_per_rotation __encoder_ticks_per_rotation) (make-array 0 :initial-element 0 :element-type :integer))
    ((:pid_slot __pid_slot) (make-array 0 :initial-element 0 :element-type :integer))
    ((:pid_p0 __pid_p0) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pid_i0 __pid_i0) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pid_d0 __pid_d0) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pid_f0 __pid_f0) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pid_izone0 __pid_izone0) (make-array 0 :initial-element 0 :element-type :integer))
    ((:pid_allowable_closed_loop_error0 __pid_allowable_closed_loop_error0) (make-array 0 :initial-element 0 :element-type :integer))
    ((:pid_max_integral_accumulator0 __pid_max_integral_accumulator0) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pid_closed_loop_peak_output0 __pid_closed_loop_peak_output0) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pid_closed_loop_period0 __pid_closed_loop_period0) (make-array 0 :initial-element 0 :element-type :integer))
    ((:pid_p1 __pid_p1) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pid_i1 __pid_i1) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pid_d1 __pid_d1) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pid_f1 __pid_f1) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pid_izone1 __pid_izone1) (make-array 0 :initial-element 0 :element-type :integer))
    ((:pid_allowable_closed_loop_error1 __pid_allowable_closed_loop_error1) (make-array 0 :initial-element 0 :element-type :integer))
    ((:pid_max_integral_accumulator1 __pid_max_integral_accumulator1) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pid_closed_loop_peak_output1 __pid_closed_loop_peak_output1) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pid_closed_loop_period1 __pid_closed_loop_period1) (make-array 0 :initial-element 0 :element-type :integer))
    ((:pid_p2 __pid_p2) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pid_i2 __pid_i2) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pid_d2 __pid_d2) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pid_f2 __pid_f2) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pid_izone2 __pid_izone2) (make-array 0 :initial-element 0 :element-type :integer))
    ((:pid_allowable_closed_loop_error2 __pid_allowable_closed_loop_error2) (make-array 0 :initial-element 0 :element-type :integer))
    ((:pid_max_integral_accumulator2 __pid_max_integral_accumulator2) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pid_closed_loop_peak_output2 __pid_closed_loop_peak_output2) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pid_closed_loop_period2 __pid_closed_loop_period2) (make-array 0 :initial-element 0 :element-type :integer))
    ((:pid_p3 __pid_p3) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pid_i3 __pid_i3) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pid_d3 __pid_d3) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pid_f3 __pid_f3) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pid_izone3 __pid_izone3) (make-array 0 :initial-element 0 :element-type :integer))
    ((:pid_allowable_closed_loop_error3 __pid_allowable_closed_loop_error3) (make-array 0 :initial-element 0 :element-type :integer))
    ((:pid_max_integral_accumulator3 __pid_max_integral_accumulator3) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pid_closed_loop_peak_output3 __pid_closed_loop_peak_output3) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pid_closed_loop_period3 __pid_closed_loop_period3) (make-array 0 :initial-element 0 :element-type :integer))
    ((:aux_pid_polarity __aux_pid_polarity) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:invert __invert) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:sensorPhase __sensorPhase) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:neutral_mode __neutral_mode) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:closed_loop_ramp __closed_loop_ramp) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:open_loop_ramp __open_loop_ramp) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:peak_output_forward __peak_output_forward) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:peak_output_reverse __peak_output_reverse) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:nominal_output_forward __nominal_output_forward) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:nominal_output_reverse __nominal_output_reverse) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:neutral_deadband __neutral_deadband) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:voltage_compensation_saturation __voltage_compensation_saturation) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:voltage_measurement_filter __voltage_measurement_filter) (make-array 0 :initial-element 0 :element-type :integer))
    ((:voltage_compensation_enable __voltage_compensation_enable) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:velocity_measurement_period __velocity_measurement_period) (make-array 0 :initial-element 0 :element-type :integer))
    ((:velocity_measurement_window __velocity_measurement_window) (make-array 0 :initial-element 0 :element-type :integer))
    ((:limit_switch_local_forward_source __limit_switch_local_forward_source) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:limit_switch_local_forward_normal __limit_switch_local_forward_normal) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:limit_switch_local_reverse_source __limit_switch_local_reverse_source) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:limit_switch_local_reverse_normal __limit_switch_local_reverse_normal) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:limit_switch_remote_forward_source __limit_switch_remote_forward_source) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:limit_switch_remote_forward_normal __limit_switch_remote_forward_normal) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:limit_switch_remote_forward_id __limit_switch_remote_forward_id) (make-array 0 :initial-element 0 :element-type :char))
    ((:limit_switch_remote_reverse_source __limit_switch_remote_reverse_source) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:limit_switch_remote_reverse_normal __limit_switch_remote_reverse_normal) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:limit_switch_remote_reverse_id __limit_switch_remote_reverse_id) (make-array 0 :initial-element 0 :element-type :char))
    ((:softlimit_forward_threshold __softlimit_forward_threshold) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:softlimit_forward_enable __softlimit_forward_enable) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:softlimit_reverse_threshold __softlimit_reverse_threshold) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:softlimit_reverse_enable __softlimit_reverse_enable) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:softlimits_override_enable __softlimits_override_enable) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:current_limit_peak_amps __current_limit_peak_amps) (make-array 0 :initial-element 0 :element-type :integer))
    ((:current_limit_peak_msec __current_limit_peak_msec) (make-array 0 :initial-element 0 :element-type :integer))
    ((:current_limit_continuous_amps __current_limit_continuous_amps) (make-array 0 :initial-element 0 :element-type :integer))
    ((:current_limit_enable __current_limit_enable) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:motion_cruise_velocity __motion_cruise_velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:motion_acceleration __motion_acceleration) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:motion_s_curve_strength __motion_s_curve_strength) (make-array 0 :initial-element 0 :element-type :char))
    ((:status_1_general_period __status_1_general_period) (make-array 0 :initial-element 0 :element-type :char))
    ((:status_2_feedback0_period __status_2_feedback0_period) (make-array 0 :initial-element 0 :element-type :char))
    ((:status_3_quadrature_period __status_3_quadrature_period) (make-array 0 :initial-element 0 :element-type :char))
    ((:status_4_aintempvbat_period __status_4_aintempvbat_period) (make-array 0 :initial-element 0 :element-type :char))
    ((:status_6_misc_period __status_6_misc_period) (make-array 0 :initial-element 0 :element-type :char))
    ((:status_7_commstatus_period __status_7_commstatus_period) (make-array 0 :initial-element 0 :element-type :char))
    ((:status_8_pulsewidth_period __status_8_pulsewidth_period) (make-array 0 :initial-element 0 :element-type :char))
    ((:status_9_motprofbuffer_period __status_9_motprofbuffer_period) (make-array 0 :initial-element 0 :element-type :char))
    ((:status_10_motionmagic_period __status_10_motionmagic_period) (make-array 0 :initial-element 0 :element-type :char))
    ((:status_11_uartgadgeteer_period __status_11_uartgadgeteer_period) (make-array 0 :initial-element 0 :element-type :char))
    ((:status_12_feedback1_period __status_12_feedback1_period) (make-array 0 :initial-element 0 :element-type :char))
    ((:status_13_base_pidf0_period __status_13_base_pidf0_period) (make-array 0 :initial-element 0 :element-type :char))
    ((:status_14_turn_pidf1_period __status_14_turn_pidf1_period) (make-array 0 :initial-element 0 :element-type :char))
    ((:status_15_firmwareapistatus_period __status_15_firmwareapistatus_period) (make-array 0 :initial-element 0 :element-type :char))
    ((:control_3_general_period __control_3_general_period) (make-array 0 :initial-element 0 :element-type :char))
    ((:control_4_advanced_period __control_4_advanced_period) (make-array 0 :initial-element 0 :element-type :char))
    ((:control_5_feedbackoutputoverride_period __control_5_feedbackoutputoverride_period) (make-array 0 :initial-element 0 :element-type :char))
    ((:control_6_motprofaddtrajpoint_period __control_6_motprofaddtrajpoint_period) (make-array 0 :initial-element 0 :element-type :char))
    ((:motion_profile_trajectory_period __motion_profile_trajectory_period) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:conversion_factor __conversion_factor) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:firmware_version __firmware_version) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:water_game __water_game) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _name __name)
   (setq _can_id __can_id)
   (setq _feedback_coefficient __feedback_coefficient)
   (setq _feedback_sensor __feedback_sensor)
   (setq _remote_feedback_sensor __remote_feedback_sensor)
   (setq _remote_feedback_device_id0 __remote_feedback_device_id0)
   (setq _remote_feedback_filter0 __remote_feedback_filter0)
   (setq _remote_feedback_device_id1 __remote_feedback_device_id1)
   (setq _remote_feedback_filter1 __remote_feedback_filter1)
   (setq _sensor_term_sum0 __sensor_term_sum0)
   (setq _sensor_term_sum1 __sensor_term_sum1)
   (setq _sensor_term_diff0 __sensor_term_diff0)
   (setq _sensor_term_diff1 __sensor_term_diff1)
   (setq _encoder_ticks_per_rotation __encoder_ticks_per_rotation)
   (setq _pid_slot __pid_slot)
   (setq _pid_p0 __pid_p0)
   (setq _pid_i0 __pid_i0)
   (setq _pid_d0 __pid_d0)
   (setq _pid_f0 __pid_f0)
   (setq _pid_izone0 __pid_izone0)
   (setq _pid_allowable_closed_loop_error0 __pid_allowable_closed_loop_error0)
   (setq _pid_max_integral_accumulator0 __pid_max_integral_accumulator0)
   (setq _pid_closed_loop_peak_output0 __pid_closed_loop_peak_output0)
   (setq _pid_closed_loop_period0 __pid_closed_loop_period0)
   (setq _pid_p1 __pid_p1)
   (setq _pid_i1 __pid_i1)
   (setq _pid_d1 __pid_d1)
   (setq _pid_f1 __pid_f1)
   (setq _pid_izone1 __pid_izone1)
   (setq _pid_allowable_closed_loop_error1 __pid_allowable_closed_loop_error1)
   (setq _pid_max_integral_accumulator1 __pid_max_integral_accumulator1)
   (setq _pid_closed_loop_peak_output1 __pid_closed_loop_peak_output1)
   (setq _pid_closed_loop_period1 __pid_closed_loop_period1)
   (setq _pid_p2 __pid_p2)
   (setq _pid_i2 __pid_i2)
   (setq _pid_d2 __pid_d2)
   (setq _pid_f2 __pid_f2)
   (setq _pid_izone2 __pid_izone2)
   (setq _pid_allowable_closed_loop_error2 __pid_allowable_closed_loop_error2)
   (setq _pid_max_integral_accumulator2 __pid_max_integral_accumulator2)
   (setq _pid_closed_loop_peak_output2 __pid_closed_loop_peak_output2)
   (setq _pid_closed_loop_period2 __pid_closed_loop_period2)
   (setq _pid_p3 __pid_p3)
   (setq _pid_i3 __pid_i3)
   (setq _pid_d3 __pid_d3)
   (setq _pid_f3 __pid_f3)
   (setq _pid_izone3 __pid_izone3)
   (setq _pid_allowable_closed_loop_error3 __pid_allowable_closed_loop_error3)
   (setq _pid_max_integral_accumulator3 __pid_max_integral_accumulator3)
   (setq _pid_closed_loop_peak_output3 __pid_closed_loop_peak_output3)
   (setq _pid_closed_loop_period3 __pid_closed_loop_period3)
   (setq _aux_pid_polarity __aux_pid_polarity)
   (setq _invert __invert)
   (setq _sensorPhase __sensorPhase)
   (setq _neutral_mode __neutral_mode)
   (setq _closed_loop_ramp __closed_loop_ramp)
   (setq _open_loop_ramp __open_loop_ramp)
   (setq _peak_output_forward __peak_output_forward)
   (setq _peak_output_reverse __peak_output_reverse)
   (setq _nominal_output_forward __nominal_output_forward)
   (setq _nominal_output_reverse __nominal_output_reverse)
   (setq _neutral_deadband __neutral_deadband)
   (setq _voltage_compensation_saturation __voltage_compensation_saturation)
   (setq _voltage_measurement_filter __voltage_measurement_filter)
   (setq _voltage_compensation_enable __voltage_compensation_enable)
   (setq _velocity_measurement_period __velocity_measurement_period)
   (setq _velocity_measurement_window __velocity_measurement_window)
   (setq _limit_switch_local_forward_source __limit_switch_local_forward_source)
   (setq _limit_switch_local_forward_normal __limit_switch_local_forward_normal)
   (setq _limit_switch_local_reverse_source __limit_switch_local_reverse_source)
   (setq _limit_switch_local_reverse_normal __limit_switch_local_reverse_normal)
   (setq _limit_switch_remote_forward_source __limit_switch_remote_forward_source)
   (setq _limit_switch_remote_forward_normal __limit_switch_remote_forward_normal)
   (setq _limit_switch_remote_forward_id __limit_switch_remote_forward_id)
   (setq _limit_switch_remote_reverse_source __limit_switch_remote_reverse_source)
   (setq _limit_switch_remote_reverse_normal __limit_switch_remote_reverse_normal)
   (setq _limit_switch_remote_reverse_id __limit_switch_remote_reverse_id)
   (setq _softlimit_forward_threshold __softlimit_forward_threshold)
   (setq _softlimit_forward_enable __softlimit_forward_enable)
   (setq _softlimit_reverse_threshold __softlimit_reverse_threshold)
   (setq _softlimit_reverse_enable __softlimit_reverse_enable)
   (setq _softlimits_override_enable __softlimits_override_enable)
   (setq _current_limit_peak_amps __current_limit_peak_amps)
   (setq _current_limit_peak_msec __current_limit_peak_msec)
   (setq _current_limit_continuous_amps __current_limit_continuous_amps)
   (setq _current_limit_enable __current_limit_enable)
   (setq _motion_cruise_velocity __motion_cruise_velocity)
   (setq _motion_acceleration __motion_acceleration)
   (setq _motion_s_curve_strength __motion_s_curve_strength)
   (setq _status_1_general_period __status_1_general_period)
   (setq _status_2_feedback0_period __status_2_feedback0_period)
   (setq _status_3_quadrature_period __status_3_quadrature_period)
   (setq _status_4_aintempvbat_period __status_4_aintempvbat_period)
   (setq _status_6_misc_period __status_6_misc_period)
   (setq _status_7_commstatus_period __status_7_commstatus_period)
   (setq _status_8_pulsewidth_period __status_8_pulsewidth_period)
   (setq _status_9_motprofbuffer_period __status_9_motprofbuffer_period)
   (setq _status_10_motionmagic_period __status_10_motionmagic_period)
   (setq _status_11_uartgadgeteer_period __status_11_uartgadgeteer_period)
   (setq _status_12_feedback1_period __status_12_feedback1_period)
   (setq _status_13_base_pidf0_period __status_13_base_pidf0_period)
   (setq _status_14_turn_pidf1_period __status_14_turn_pidf1_period)
   (setq _status_15_firmwareapistatus_period __status_15_firmwareapistatus_period)
   (setq _control_3_general_period __control_3_general_period)
   (setq _control_4_advanced_period __control_4_advanced_period)
   (setq _control_5_feedbackoutputoverride_period __control_5_feedbackoutputoverride_period)
   (setq _control_6_motprofaddtrajpoint_period __control_6_motprofaddtrajpoint_period)
   (setq _motion_profile_trajectory_period __motion_profile_trajectory_period)
   (setq _conversion_factor __conversion_factor)
   (setq _firmware_version __firmware_version)
   (setq _water_game __water_game)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:can_id
   (&optional __can_id)
   (if __can_id (setq _can_id __can_id)) _can_id)
  (:feedback_coefficient
   (&optional __feedback_coefficient)
   (if __feedback_coefficient (setq _feedback_coefficient __feedback_coefficient)) _feedback_coefficient)
  (:feedback_sensor
   (&optional __feedback_sensor)
   (if __feedback_sensor (setq _feedback_sensor __feedback_sensor)) _feedback_sensor)
  (:remote_feedback_sensor
   (&optional __remote_feedback_sensor)
   (if __remote_feedback_sensor (setq _remote_feedback_sensor __remote_feedback_sensor)) _remote_feedback_sensor)
  (:remote_feedback_device_id0
   (&optional __remote_feedback_device_id0)
   (if __remote_feedback_device_id0 (setq _remote_feedback_device_id0 __remote_feedback_device_id0)) _remote_feedback_device_id0)
  (:remote_feedback_filter0
   (&optional __remote_feedback_filter0)
   (if __remote_feedback_filter0 (setq _remote_feedback_filter0 __remote_feedback_filter0)) _remote_feedback_filter0)
  (:remote_feedback_device_id1
   (&optional __remote_feedback_device_id1)
   (if __remote_feedback_device_id1 (setq _remote_feedback_device_id1 __remote_feedback_device_id1)) _remote_feedback_device_id1)
  (:remote_feedback_filter1
   (&optional __remote_feedback_filter1)
   (if __remote_feedback_filter1 (setq _remote_feedback_filter1 __remote_feedback_filter1)) _remote_feedback_filter1)
  (:sensor_term_sum0
   (&optional __sensor_term_sum0)
   (if __sensor_term_sum0 (setq _sensor_term_sum0 __sensor_term_sum0)) _sensor_term_sum0)
  (:sensor_term_sum1
   (&optional __sensor_term_sum1)
   (if __sensor_term_sum1 (setq _sensor_term_sum1 __sensor_term_sum1)) _sensor_term_sum1)
  (:sensor_term_diff0
   (&optional __sensor_term_diff0)
   (if __sensor_term_diff0 (setq _sensor_term_diff0 __sensor_term_diff0)) _sensor_term_diff0)
  (:sensor_term_diff1
   (&optional __sensor_term_diff1)
   (if __sensor_term_diff1 (setq _sensor_term_diff1 __sensor_term_diff1)) _sensor_term_diff1)
  (:encoder_ticks_per_rotation
   (&optional __encoder_ticks_per_rotation)
   (if __encoder_ticks_per_rotation (setq _encoder_ticks_per_rotation __encoder_ticks_per_rotation)) _encoder_ticks_per_rotation)
  (:pid_slot
   (&optional __pid_slot)
   (if __pid_slot (setq _pid_slot __pid_slot)) _pid_slot)
  (:pid_p0
   (&optional __pid_p0)
   (if __pid_p0 (setq _pid_p0 __pid_p0)) _pid_p0)
  (:pid_i0
   (&optional __pid_i0)
   (if __pid_i0 (setq _pid_i0 __pid_i0)) _pid_i0)
  (:pid_d0
   (&optional __pid_d0)
   (if __pid_d0 (setq _pid_d0 __pid_d0)) _pid_d0)
  (:pid_f0
   (&optional __pid_f0)
   (if __pid_f0 (setq _pid_f0 __pid_f0)) _pid_f0)
  (:pid_izone0
   (&optional __pid_izone0)
   (if __pid_izone0 (setq _pid_izone0 __pid_izone0)) _pid_izone0)
  (:pid_allowable_closed_loop_error0
   (&optional __pid_allowable_closed_loop_error0)
   (if __pid_allowable_closed_loop_error0 (setq _pid_allowable_closed_loop_error0 __pid_allowable_closed_loop_error0)) _pid_allowable_closed_loop_error0)
  (:pid_max_integral_accumulator0
   (&optional __pid_max_integral_accumulator0)
   (if __pid_max_integral_accumulator0 (setq _pid_max_integral_accumulator0 __pid_max_integral_accumulator0)) _pid_max_integral_accumulator0)
  (:pid_closed_loop_peak_output0
   (&optional __pid_closed_loop_peak_output0)
   (if __pid_closed_loop_peak_output0 (setq _pid_closed_loop_peak_output0 __pid_closed_loop_peak_output0)) _pid_closed_loop_peak_output0)
  (:pid_closed_loop_period0
   (&optional __pid_closed_loop_period0)
   (if __pid_closed_loop_period0 (setq _pid_closed_loop_period0 __pid_closed_loop_period0)) _pid_closed_loop_period0)
  (:pid_p1
   (&optional __pid_p1)
   (if __pid_p1 (setq _pid_p1 __pid_p1)) _pid_p1)
  (:pid_i1
   (&optional __pid_i1)
   (if __pid_i1 (setq _pid_i1 __pid_i1)) _pid_i1)
  (:pid_d1
   (&optional __pid_d1)
   (if __pid_d1 (setq _pid_d1 __pid_d1)) _pid_d1)
  (:pid_f1
   (&optional __pid_f1)
   (if __pid_f1 (setq _pid_f1 __pid_f1)) _pid_f1)
  (:pid_izone1
   (&optional __pid_izone1)
   (if __pid_izone1 (setq _pid_izone1 __pid_izone1)) _pid_izone1)
  (:pid_allowable_closed_loop_error1
   (&optional __pid_allowable_closed_loop_error1)
   (if __pid_allowable_closed_loop_error1 (setq _pid_allowable_closed_loop_error1 __pid_allowable_closed_loop_error1)) _pid_allowable_closed_loop_error1)
  (:pid_max_integral_accumulator1
   (&optional __pid_max_integral_accumulator1)
   (if __pid_max_integral_accumulator1 (setq _pid_max_integral_accumulator1 __pid_max_integral_accumulator1)) _pid_max_integral_accumulator1)
  (:pid_closed_loop_peak_output1
   (&optional __pid_closed_loop_peak_output1)
   (if __pid_closed_loop_peak_output1 (setq _pid_closed_loop_peak_output1 __pid_closed_loop_peak_output1)) _pid_closed_loop_peak_output1)
  (:pid_closed_loop_period1
   (&optional __pid_closed_loop_period1)
   (if __pid_closed_loop_period1 (setq _pid_closed_loop_period1 __pid_closed_loop_period1)) _pid_closed_loop_period1)
  (:pid_p2
   (&optional __pid_p2)
   (if __pid_p2 (setq _pid_p2 __pid_p2)) _pid_p2)
  (:pid_i2
   (&optional __pid_i2)
   (if __pid_i2 (setq _pid_i2 __pid_i2)) _pid_i2)
  (:pid_d2
   (&optional __pid_d2)
   (if __pid_d2 (setq _pid_d2 __pid_d2)) _pid_d2)
  (:pid_f2
   (&optional __pid_f2)
   (if __pid_f2 (setq _pid_f2 __pid_f2)) _pid_f2)
  (:pid_izone2
   (&optional __pid_izone2)
   (if __pid_izone2 (setq _pid_izone2 __pid_izone2)) _pid_izone2)
  (:pid_allowable_closed_loop_error2
   (&optional __pid_allowable_closed_loop_error2)
   (if __pid_allowable_closed_loop_error2 (setq _pid_allowable_closed_loop_error2 __pid_allowable_closed_loop_error2)) _pid_allowable_closed_loop_error2)
  (:pid_max_integral_accumulator2
   (&optional __pid_max_integral_accumulator2)
   (if __pid_max_integral_accumulator2 (setq _pid_max_integral_accumulator2 __pid_max_integral_accumulator2)) _pid_max_integral_accumulator2)
  (:pid_closed_loop_peak_output2
   (&optional __pid_closed_loop_peak_output2)
   (if __pid_closed_loop_peak_output2 (setq _pid_closed_loop_peak_output2 __pid_closed_loop_peak_output2)) _pid_closed_loop_peak_output2)
  (:pid_closed_loop_period2
   (&optional __pid_closed_loop_period2)
   (if __pid_closed_loop_period2 (setq _pid_closed_loop_period2 __pid_closed_loop_period2)) _pid_closed_loop_period2)
  (:pid_p3
   (&optional __pid_p3)
   (if __pid_p3 (setq _pid_p3 __pid_p3)) _pid_p3)
  (:pid_i3
   (&optional __pid_i3)
   (if __pid_i3 (setq _pid_i3 __pid_i3)) _pid_i3)
  (:pid_d3
   (&optional __pid_d3)
   (if __pid_d3 (setq _pid_d3 __pid_d3)) _pid_d3)
  (:pid_f3
   (&optional __pid_f3)
   (if __pid_f3 (setq _pid_f3 __pid_f3)) _pid_f3)
  (:pid_izone3
   (&optional __pid_izone3)
   (if __pid_izone3 (setq _pid_izone3 __pid_izone3)) _pid_izone3)
  (:pid_allowable_closed_loop_error3
   (&optional __pid_allowable_closed_loop_error3)
   (if __pid_allowable_closed_loop_error3 (setq _pid_allowable_closed_loop_error3 __pid_allowable_closed_loop_error3)) _pid_allowable_closed_loop_error3)
  (:pid_max_integral_accumulator3
   (&optional __pid_max_integral_accumulator3)
   (if __pid_max_integral_accumulator3 (setq _pid_max_integral_accumulator3 __pid_max_integral_accumulator3)) _pid_max_integral_accumulator3)
  (:pid_closed_loop_peak_output3
   (&optional __pid_closed_loop_peak_output3)
   (if __pid_closed_loop_peak_output3 (setq _pid_closed_loop_peak_output3 __pid_closed_loop_peak_output3)) _pid_closed_loop_peak_output3)
  (:pid_closed_loop_period3
   (&optional __pid_closed_loop_period3)
   (if __pid_closed_loop_period3 (setq _pid_closed_loop_period3 __pid_closed_loop_period3)) _pid_closed_loop_period3)
  (:aux_pid_polarity
   (&optional __aux_pid_polarity)
   (if __aux_pid_polarity (setq _aux_pid_polarity __aux_pid_polarity)) _aux_pid_polarity)
  (:invert
   (&optional __invert)
   (if __invert (setq _invert __invert)) _invert)
  (:sensorPhase
   (&optional __sensorPhase)
   (if __sensorPhase (setq _sensorPhase __sensorPhase)) _sensorPhase)
  (:neutral_mode
   (&optional __neutral_mode)
   (if __neutral_mode (setq _neutral_mode __neutral_mode)) _neutral_mode)
  (:closed_loop_ramp
   (&optional __closed_loop_ramp)
   (if __closed_loop_ramp (setq _closed_loop_ramp __closed_loop_ramp)) _closed_loop_ramp)
  (:open_loop_ramp
   (&optional __open_loop_ramp)
   (if __open_loop_ramp (setq _open_loop_ramp __open_loop_ramp)) _open_loop_ramp)
  (:peak_output_forward
   (&optional __peak_output_forward)
   (if __peak_output_forward (setq _peak_output_forward __peak_output_forward)) _peak_output_forward)
  (:peak_output_reverse
   (&optional __peak_output_reverse)
   (if __peak_output_reverse (setq _peak_output_reverse __peak_output_reverse)) _peak_output_reverse)
  (:nominal_output_forward
   (&optional __nominal_output_forward)
   (if __nominal_output_forward (setq _nominal_output_forward __nominal_output_forward)) _nominal_output_forward)
  (:nominal_output_reverse
   (&optional __nominal_output_reverse)
   (if __nominal_output_reverse (setq _nominal_output_reverse __nominal_output_reverse)) _nominal_output_reverse)
  (:neutral_deadband
   (&optional __neutral_deadband)
   (if __neutral_deadband (setq _neutral_deadband __neutral_deadband)) _neutral_deadband)
  (:voltage_compensation_saturation
   (&optional __voltage_compensation_saturation)
   (if __voltage_compensation_saturation (setq _voltage_compensation_saturation __voltage_compensation_saturation)) _voltage_compensation_saturation)
  (:voltage_measurement_filter
   (&optional __voltage_measurement_filter)
   (if __voltage_measurement_filter (setq _voltage_measurement_filter __voltage_measurement_filter)) _voltage_measurement_filter)
  (:voltage_compensation_enable
   (&optional __voltage_compensation_enable)
   (if __voltage_compensation_enable (setq _voltage_compensation_enable __voltage_compensation_enable)) _voltage_compensation_enable)
  (:velocity_measurement_period
   (&optional __velocity_measurement_period)
   (if __velocity_measurement_period (setq _velocity_measurement_period __velocity_measurement_period)) _velocity_measurement_period)
  (:velocity_measurement_window
   (&optional __velocity_measurement_window)
   (if __velocity_measurement_window (setq _velocity_measurement_window __velocity_measurement_window)) _velocity_measurement_window)
  (:limit_switch_local_forward_source
   (&optional __limit_switch_local_forward_source)
   (if __limit_switch_local_forward_source (setq _limit_switch_local_forward_source __limit_switch_local_forward_source)) _limit_switch_local_forward_source)
  (:limit_switch_local_forward_normal
   (&optional __limit_switch_local_forward_normal)
   (if __limit_switch_local_forward_normal (setq _limit_switch_local_forward_normal __limit_switch_local_forward_normal)) _limit_switch_local_forward_normal)
  (:limit_switch_local_reverse_source
   (&optional __limit_switch_local_reverse_source)
   (if __limit_switch_local_reverse_source (setq _limit_switch_local_reverse_source __limit_switch_local_reverse_source)) _limit_switch_local_reverse_source)
  (:limit_switch_local_reverse_normal
   (&optional __limit_switch_local_reverse_normal)
   (if __limit_switch_local_reverse_normal (setq _limit_switch_local_reverse_normal __limit_switch_local_reverse_normal)) _limit_switch_local_reverse_normal)
  (:limit_switch_remote_forward_source
   (&optional __limit_switch_remote_forward_source)
   (if __limit_switch_remote_forward_source (setq _limit_switch_remote_forward_source __limit_switch_remote_forward_source)) _limit_switch_remote_forward_source)
  (:limit_switch_remote_forward_normal
   (&optional __limit_switch_remote_forward_normal)
   (if __limit_switch_remote_forward_normal (setq _limit_switch_remote_forward_normal __limit_switch_remote_forward_normal)) _limit_switch_remote_forward_normal)
  (:limit_switch_remote_forward_id
   (&optional __limit_switch_remote_forward_id)
   (if __limit_switch_remote_forward_id (setq _limit_switch_remote_forward_id __limit_switch_remote_forward_id)) _limit_switch_remote_forward_id)
  (:limit_switch_remote_reverse_source
   (&optional __limit_switch_remote_reverse_source)
   (if __limit_switch_remote_reverse_source (setq _limit_switch_remote_reverse_source __limit_switch_remote_reverse_source)) _limit_switch_remote_reverse_source)
  (:limit_switch_remote_reverse_normal
   (&optional __limit_switch_remote_reverse_normal)
   (if __limit_switch_remote_reverse_normal (setq _limit_switch_remote_reverse_normal __limit_switch_remote_reverse_normal)) _limit_switch_remote_reverse_normal)
  (:limit_switch_remote_reverse_id
   (&optional __limit_switch_remote_reverse_id)
   (if __limit_switch_remote_reverse_id (setq _limit_switch_remote_reverse_id __limit_switch_remote_reverse_id)) _limit_switch_remote_reverse_id)
  (:softlimit_forward_threshold
   (&optional __softlimit_forward_threshold)
   (if __softlimit_forward_threshold (setq _softlimit_forward_threshold __softlimit_forward_threshold)) _softlimit_forward_threshold)
  (:softlimit_forward_enable
   (&optional __softlimit_forward_enable)
   (if __softlimit_forward_enable (setq _softlimit_forward_enable __softlimit_forward_enable)) _softlimit_forward_enable)
  (:softlimit_reverse_threshold
   (&optional __softlimit_reverse_threshold)
   (if __softlimit_reverse_threshold (setq _softlimit_reverse_threshold __softlimit_reverse_threshold)) _softlimit_reverse_threshold)
  (:softlimit_reverse_enable
   (&optional __softlimit_reverse_enable)
   (if __softlimit_reverse_enable (setq _softlimit_reverse_enable __softlimit_reverse_enable)) _softlimit_reverse_enable)
  (:softlimits_override_enable
   (&optional __softlimits_override_enable)
   (if __softlimits_override_enable (setq _softlimits_override_enable __softlimits_override_enable)) _softlimits_override_enable)
  (:current_limit_peak_amps
   (&optional __current_limit_peak_amps)
   (if __current_limit_peak_amps (setq _current_limit_peak_amps __current_limit_peak_amps)) _current_limit_peak_amps)
  (:current_limit_peak_msec
   (&optional __current_limit_peak_msec)
   (if __current_limit_peak_msec (setq _current_limit_peak_msec __current_limit_peak_msec)) _current_limit_peak_msec)
  (:current_limit_continuous_amps
   (&optional __current_limit_continuous_amps)
   (if __current_limit_continuous_amps (setq _current_limit_continuous_amps __current_limit_continuous_amps)) _current_limit_continuous_amps)
  (:current_limit_enable
   (&optional __current_limit_enable)
   (if __current_limit_enable (setq _current_limit_enable __current_limit_enable)) _current_limit_enable)
  (:motion_cruise_velocity
   (&optional __motion_cruise_velocity)
   (if __motion_cruise_velocity (setq _motion_cruise_velocity __motion_cruise_velocity)) _motion_cruise_velocity)
  (:motion_acceleration
   (&optional __motion_acceleration)
   (if __motion_acceleration (setq _motion_acceleration __motion_acceleration)) _motion_acceleration)
  (:motion_s_curve_strength
   (&optional __motion_s_curve_strength)
   (if __motion_s_curve_strength (setq _motion_s_curve_strength __motion_s_curve_strength)) _motion_s_curve_strength)
  (:status_1_general_period
   (&optional __status_1_general_period)
   (if __status_1_general_period (setq _status_1_general_period __status_1_general_period)) _status_1_general_period)
  (:status_2_feedback0_period
   (&optional __status_2_feedback0_period)
   (if __status_2_feedback0_period (setq _status_2_feedback0_period __status_2_feedback0_period)) _status_2_feedback0_period)
  (:status_3_quadrature_period
   (&optional __status_3_quadrature_period)
   (if __status_3_quadrature_period (setq _status_3_quadrature_period __status_3_quadrature_period)) _status_3_quadrature_period)
  (:status_4_aintempvbat_period
   (&optional __status_4_aintempvbat_period)
   (if __status_4_aintempvbat_period (setq _status_4_aintempvbat_period __status_4_aintempvbat_period)) _status_4_aintempvbat_period)
  (:status_6_misc_period
   (&optional __status_6_misc_period)
   (if __status_6_misc_period (setq _status_6_misc_period __status_6_misc_period)) _status_6_misc_period)
  (:status_7_commstatus_period
   (&optional __status_7_commstatus_period)
   (if __status_7_commstatus_period (setq _status_7_commstatus_period __status_7_commstatus_period)) _status_7_commstatus_period)
  (:status_8_pulsewidth_period
   (&optional __status_8_pulsewidth_period)
   (if __status_8_pulsewidth_period (setq _status_8_pulsewidth_period __status_8_pulsewidth_period)) _status_8_pulsewidth_period)
  (:status_9_motprofbuffer_period
   (&optional __status_9_motprofbuffer_period)
   (if __status_9_motprofbuffer_period (setq _status_9_motprofbuffer_period __status_9_motprofbuffer_period)) _status_9_motprofbuffer_period)
  (:status_10_motionmagic_period
   (&optional __status_10_motionmagic_period)
   (if __status_10_motionmagic_period (setq _status_10_motionmagic_period __status_10_motionmagic_period)) _status_10_motionmagic_period)
  (:status_11_uartgadgeteer_period
   (&optional __status_11_uartgadgeteer_period)
   (if __status_11_uartgadgeteer_period (setq _status_11_uartgadgeteer_period __status_11_uartgadgeteer_period)) _status_11_uartgadgeteer_period)
  (:status_12_feedback1_period
   (&optional __status_12_feedback1_period)
   (if __status_12_feedback1_period (setq _status_12_feedback1_period __status_12_feedback1_period)) _status_12_feedback1_period)
  (:status_13_base_pidf0_period
   (&optional __status_13_base_pidf0_period)
   (if __status_13_base_pidf0_period (setq _status_13_base_pidf0_period __status_13_base_pidf0_period)) _status_13_base_pidf0_period)
  (:status_14_turn_pidf1_period
   (&optional __status_14_turn_pidf1_period)
   (if __status_14_turn_pidf1_period (setq _status_14_turn_pidf1_period __status_14_turn_pidf1_period)) _status_14_turn_pidf1_period)
  (:status_15_firmwareapistatus_period
   (&optional __status_15_firmwareapistatus_period)
   (if __status_15_firmwareapistatus_period (setq _status_15_firmwareapistatus_period __status_15_firmwareapistatus_period)) _status_15_firmwareapistatus_period)
  (:control_3_general_period
   (&optional __control_3_general_period)
   (if __control_3_general_period (setq _control_3_general_period __control_3_general_period)) _control_3_general_period)
  (:control_4_advanced_period
   (&optional __control_4_advanced_period)
   (if __control_4_advanced_period (setq _control_4_advanced_period __control_4_advanced_period)) _control_4_advanced_period)
  (:control_5_feedbackoutputoverride_period
   (&optional __control_5_feedbackoutputoverride_period)
   (if __control_5_feedbackoutputoverride_period (setq _control_5_feedbackoutputoverride_period __control_5_feedbackoutputoverride_period)) _control_5_feedbackoutputoverride_period)
  (:control_6_motprofaddtrajpoint_period
   (&optional __control_6_motprofaddtrajpoint_period)
   (if __control_6_motprofaddtrajpoint_period (setq _control_6_motprofaddtrajpoint_period __control_6_motprofaddtrajpoint_period)) _control_6_motprofaddtrajpoint_period)
  (:motion_profile_trajectory_period
   (&optional __motion_profile_trajectory_period)
   (if __motion_profile_trajectory_period (setq _motion_profile_trajectory_period __motion_profile_trajectory_period)) _motion_profile_trajectory_period)
  (:conversion_factor
   (&optional __conversion_factor)
   (if __conversion_factor (setq _conversion_factor __conversion_factor)) _conversion_factor)
  (:firmware_version
   (&optional __firmware_version)
   (if __firmware_version (setq _firmware_version __firmware_version)) _firmware_version)
  (:water_game
   (&optional __water_game)
   (if __water_game (setq _water_game __water_game)) _water_game)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; int8[] _can_id
    (* 1    (length _can_id)) 4
    ;; float64[] _feedback_coefficient
    (* 8    (length _feedback_coefficient)) 4
    ;; string[] _feedback_sensor
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _feedback_sensor)) 4
    ;; string[] _remote_feedback_sensor
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _remote_feedback_sensor)) 4
    ;; int8[] _remote_feedback_device_id0
    (* 1    (length _remote_feedback_device_id0)) 4
    ;; string[] _remote_feedback_filter0
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _remote_feedback_filter0)) 4
    ;; int8[] _remote_feedback_device_id1
    (* 1    (length _remote_feedback_device_id1)) 4
    ;; string[] _remote_feedback_filter1
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _remote_feedback_filter1)) 4
    ;; string[] _sensor_term_sum0
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _sensor_term_sum0)) 4
    ;; string[] _sensor_term_sum1
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _sensor_term_sum1)) 4
    ;; string[] _sensor_term_diff0
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _sensor_term_diff0)) 4
    ;; string[] _sensor_term_diff1
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _sensor_term_diff1)) 4
    ;; int32[] _encoder_ticks_per_rotation
    (* 4    (length _encoder_ticks_per_rotation)) 4
    ;; int32[] _pid_slot
    (* 4    (length _pid_slot)) 4
    ;; float64[] _pid_p0
    (* 8    (length _pid_p0)) 4
    ;; float64[] _pid_i0
    (* 8    (length _pid_i0)) 4
    ;; float64[] _pid_d0
    (* 8    (length _pid_d0)) 4
    ;; float64[] _pid_f0
    (* 8    (length _pid_f0)) 4
    ;; int32[] _pid_izone0
    (* 4    (length _pid_izone0)) 4
    ;; int32[] _pid_allowable_closed_loop_error0
    (* 4    (length _pid_allowable_closed_loop_error0)) 4
    ;; float64[] _pid_max_integral_accumulator0
    (* 8    (length _pid_max_integral_accumulator0)) 4
    ;; float64[] _pid_closed_loop_peak_output0
    (* 8    (length _pid_closed_loop_peak_output0)) 4
    ;; int32[] _pid_closed_loop_period0
    (* 4    (length _pid_closed_loop_period0)) 4
    ;; float64[] _pid_p1
    (* 8    (length _pid_p1)) 4
    ;; float64[] _pid_i1
    (* 8    (length _pid_i1)) 4
    ;; float64[] _pid_d1
    (* 8    (length _pid_d1)) 4
    ;; float64[] _pid_f1
    (* 8    (length _pid_f1)) 4
    ;; int32[] _pid_izone1
    (* 4    (length _pid_izone1)) 4
    ;; int32[] _pid_allowable_closed_loop_error1
    (* 4    (length _pid_allowable_closed_loop_error1)) 4
    ;; float64[] _pid_max_integral_accumulator1
    (* 8    (length _pid_max_integral_accumulator1)) 4
    ;; float64[] _pid_closed_loop_peak_output1
    (* 8    (length _pid_closed_loop_peak_output1)) 4
    ;; int32[] _pid_closed_loop_period1
    (* 4    (length _pid_closed_loop_period1)) 4
    ;; float64[] _pid_p2
    (* 8    (length _pid_p2)) 4
    ;; float64[] _pid_i2
    (* 8    (length _pid_i2)) 4
    ;; float64[] _pid_d2
    (* 8    (length _pid_d2)) 4
    ;; float64[] _pid_f2
    (* 8    (length _pid_f2)) 4
    ;; int32[] _pid_izone2
    (* 4    (length _pid_izone2)) 4
    ;; int32[] _pid_allowable_closed_loop_error2
    (* 4    (length _pid_allowable_closed_loop_error2)) 4
    ;; float64[] _pid_max_integral_accumulator2
    (* 8    (length _pid_max_integral_accumulator2)) 4
    ;; float64[] _pid_closed_loop_peak_output2
    (* 8    (length _pid_closed_loop_peak_output2)) 4
    ;; int32[] _pid_closed_loop_period2
    (* 4    (length _pid_closed_loop_period2)) 4
    ;; float64[] _pid_p3
    (* 8    (length _pid_p3)) 4
    ;; float64[] _pid_i3
    (* 8    (length _pid_i3)) 4
    ;; float64[] _pid_d3
    (* 8    (length _pid_d3)) 4
    ;; float64[] _pid_f3
    (* 8    (length _pid_f3)) 4
    ;; int32[] _pid_izone3
    (* 4    (length _pid_izone3)) 4
    ;; int32[] _pid_allowable_closed_loop_error3
    (* 4    (length _pid_allowable_closed_loop_error3)) 4
    ;; float64[] _pid_max_integral_accumulator3
    (* 8    (length _pid_max_integral_accumulator3)) 4
    ;; float64[] _pid_closed_loop_peak_output3
    (* 8    (length _pid_closed_loop_peak_output3)) 4
    ;; int32[] _pid_closed_loop_period3
    (* 4    (length _pid_closed_loop_period3)) 4
    ;; bool[] _aux_pid_polarity
    (* 1    (length _aux_pid_polarity)) 4
    ;; bool[] _invert
    (* 1    (length _invert)) 4
    ;; bool[] _sensorPhase
    (* 1    (length _sensorPhase)) 4
    ;; string[] _neutral_mode
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _neutral_mode)) 4
    ;; float64[] _closed_loop_ramp
    (* 8    (length _closed_loop_ramp)) 4
    ;; float64[] _open_loop_ramp
    (* 8    (length _open_loop_ramp)) 4
    ;; float64[] _peak_output_forward
    (* 8    (length _peak_output_forward)) 4
    ;; float64[] _peak_output_reverse
    (* 8    (length _peak_output_reverse)) 4
    ;; float64[] _nominal_output_forward
    (* 8    (length _nominal_output_forward)) 4
    ;; float64[] _nominal_output_reverse
    (* 8    (length _nominal_output_reverse)) 4
    ;; float64[] _neutral_deadband
    (* 8    (length _neutral_deadband)) 4
    ;; float64[] _voltage_compensation_saturation
    (* 8    (length _voltage_compensation_saturation)) 4
    ;; int32[] _voltage_measurement_filter
    (* 4    (length _voltage_measurement_filter)) 4
    ;; bool[] _voltage_compensation_enable
    (* 1    (length _voltage_compensation_enable)) 4
    ;; int32[] _velocity_measurement_period
    (* 4    (length _velocity_measurement_period)) 4
    ;; int32[] _velocity_measurement_window
    (* 4    (length _velocity_measurement_window)) 4
    ;; string[] _limit_switch_local_forward_source
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _limit_switch_local_forward_source)) 4
    ;; string[] _limit_switch_local_forward_normal
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _limit_switch_local_forward_normal)) 4
    ;; string[] _limit_switch_local_reverse_source
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _limit_switch_local_reverse_source)) 4
    ;; string[] _limit_switch_local_reverse_normal
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _limit_switch_local_reverse_normal)) 4
    ;; string[] _limit_switch_remote_forward_source
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _limit_switch_remote_forward_source)) 4
    ;; string[] _limit_switch_remote_forward_normal
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _limit_switch_remote_forward_normal)) 4
    ;; uint8[] _limit_switch_remote_forward_id
    (* 1    (length _limit_switch_remote_forward_id)) 4
    ;; string[] _limit_switch_remote_reverse_source
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _limit_switch_remote_reverse_source)) 4
    ;; string[] _limit_switch_remote_reverse_normal
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _limit_switch_remote_reverse_normal)) 4
    ;; uint8[] _limit_switch_remote_reverse_id
    (* 1    (length _limit_switch_remote_reverse_id)) 4
    ;; float64[] _softlimit_forward_threshold
    (* 8    (length _softlimit_forward_threshold)) 4
    ;; bool[] _softlimit_forward_enable
    (* 1    (length _softlimit_forward_enable)) 4
    ;; float64[] _softlimit_reverse_threshold
    (* 8    (length _softlimit_reverse_threshold)) 4
    ;; bool[] _softlimit_reverse_enable
    (* 1    (length _softlimit_reverse_enable)) 4
    ;; bool[] _softlimits_override_enable
    (* 1    (length _softlimits_override_enable)) 4
    ;; int32[] _current_limit_peak_amps
    (* 4    (length _current_limit_peak_amps)) 4
    ;; int32[] _current_limit_peak_msec
    (* 4    (length _current_limit_peak_msec)) 4
    ;; int32[] _current_limit_continuous_amps
    (* 4    (length _current_limit_continuous_amps)) 4
    ;; bool[] _current_limit_enable
    (* 1    (length _current_limit_enable)) 4
    ;; float64[] _motion_cruise_velocity
    (* 8    (length _motion_cruise_velocity)) 4
    ;; float64[] _motion_acceleration
    (* 8    (length _motion_acceleration)) 4
    ;; uint8[] _motion_s_curve_strength
    (* 1    (length _motion_s_curve_strength)) 4
    ;; uint8[] _status_1_general_period
    (* 1    (length _status_1_general_period)) 4
    ;; uint8[] _status_2_feedback0_period
    (* 1    (length _status_2_feedback0_period)) 4
    ;; uint8[] _status_3_quadrature_period
    (* 1    (length _status_3_quadrature_period)) 4
    ;; uint8[] _status_4_aintempvbat_period
    (* 1    (length _status_4_aintempvbat_period)) 4
    ;; uint8[] _status_6_misc_period
    (* 1    (length _status_6_misc_period)) 4
    ;; uint8[] _status_7_commstatus_period
    (* 1    (length _status_7_commstatus_period)) 4
    ;; uint8[] _status_8_pulsewidth_period
    (* 1    (length _status_8_pulsewidth_period)) 4
    ;; uint8[] _status_9_motprofbuffer_period
    (* 1    (length _status_9_motprofbuffer_period)) 4
    ;; uint8[] _status_10_motionmagic_period
    (* 1    (length _status_10_motionmagic_period)) 4
    ;; uint8[] _status_11_uartgadgeteer_period
    (* 1    (length _status_11_uartgadgeteer_period)) 4
    ;; uint8[] _status_12_feedback1_period
    (* 1    (length _status_12_feedback1_period)) 4
    ;; uint8[] _status_13_base_pidf0_period
    (* 1    (length _status_13_base_pidf0_period)) 4
    ;; uint8[] _status_14_turn_pidf1_period
    (* 1    (length _status_14_turn_pidf1_period)) 4
    ;; uint8[] _status_15_firmwareapistatus_period
    (* 1    (length _status_15_firmwareapistatus_period)) 4
    ;; uint8[] _control_3_general_period
    (* 1    (length _control_3_general_period)) 4
    ;; uint8[] _control_4_advanced_period
    (* 1    (length _control_4_advanced_period)) 4
    ;; uint8[] _control_5_feedbackoutputoverride_period
    (* 1    (length _control_5_feedbackoutputoverride_period)) 4
    ;; uint8[] _control_6_motprofaddtrajpoint_period
    (* 1    (length _control_6_motprofaddtrajpoint_period)) 4
    ;; float64[] _motion_profile_trajectory_period
    (* 8    (length _motion_profile_trajectory_period)) 4
    ;; float64[] _conversion_factor
    (* 8    (length _conversion_factor)) 4
    ;; string[] _firmware_version
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _firmware_version)) 4
    ;; bool[] _water_game
    (* 1    (length _water_game)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int8[] _can_id
     (write-long (length _can_id) s)
     (dotimes (i (length _can_id))
       (write-byte (elt _can_id i) s)
       )
     ;; float64[] _feedback_coefficient
     (write-long (length _feedback_coefficient) s)
     (dotimes (i (length _feedback_coefficient))
       (sys::poke (elt _feedback_coefficient i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; string[] _feedback_sensor
     (write-long (length _feedback_sensor) s)
     (dolist (elem _feedback_sensor)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _remote_feedback_sensor
     (write-long (length _remote_feedback_sensor) s)
     (dolist (elem _remote_feedback_sensor)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int8[] _remote_feedback_device_id0
     (write-long (length _remote_feedback_device_id0) s)
     (dotimes (i (length _remote_feedback_device_id0))
       (write-byte (elt _remote_feedback_device_id0 i) s)
       )
     ;; string[] _remote_feedback_filter0
     (write-long (length _remote_feedback_filter0) s)
     (dolist (elem _remote_feedback_filter0)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int8[] _remote_feedback_device_id1
     (write-long (length _remote_feedback_device_id1) s)
     (dotimes (i (length _remote_feedback_device_id1))
       (write-byte (elt _remote_feedback_device_id1 i) s)
       )
     ;; string[] _remote_feedback_filter1
     (write-long (length _remote_feedback_filter1) s)
     (dolist (elem _remote_feedback_filter1)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _sensor_term_sum0
     (write-long (length _sensor_term_sum0) s)
     (dolist (elem _sensor_term_sum0)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _sensor_term_sum1
     (write-long (length _sensor_term_sum1) s)
     (dolist (elem _sensor_term_sum1)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _sensor_term_diff0
     (write-long (length _sensor_term_diff0) s)
     (dolist (elem _sensor_term_diff0)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _sensor_term_diff1
     (write-long (length _sensor_term_diff1) s)
     (dolist (elem _sensor_term_diff1)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int32[] _encoder_ticks_per_rotation
     (write-long (length _encoder_ticks_per_rotation) s)
     (dotimes (i (length _encoder_ticks_per_rotation))
       (write-long (elt _encoder_ticks_per_rotation i) s)
       )
     ;; int32[] _pid_slot
     (write-long (length _pid_slot) s)
     (dotimes (i (length _pid_slot))
       (write-long (elt _pid_slot i) s)
       )
     ;; float64[] _pid_p0
     (write-long (length _pid_p0) s)
     (dotimes (i (length _pid_p0))
       (sys::poke (elt _pid_p0 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _pid_i0
     (write-long (length _pid_i0) s)
     (dotimes (i (length _pid_i0))
       (sys::poke (elt _pid_i0 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _pid_d0
     (write-long (length _pid_d0) s)
     (dotimes (i (length _pid_d0))
       (sys::poke (elt _pid_d0 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _pid_f0
     (write-long (length _pid_f0) s)
     (dotimes (i (length _pid_f0))
       (sys::poke (elt _pid_f0 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32[] _pid_izone0
     (write-long (length _pid_izone0) s)
     (dotimes (i (length _pid_izone0))
       (write-long (elt _pid_izone0 i) s)
       )
     ;; int32[] _pid_allowable_closed_loop_error0
     (write-long (length _pid_allowable_closed_loop_error0) s)
     (dotimes (i (length _pid_allowable_closed_loop_error0))
       (write-long (elt _pid_allowable_closed_loop_error0 i) s)
       )
     ;; float64[] _pid_max_integral_accumulator0
     (write-long (length _pid_max_integral_accumulator0) s)
     (dotimes (i (length _pid_max_integral_accumulator0))
       (sys::poke (elt _pid_max_integral_accumulator0 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _pid_closed_loop_peak_output0
     (write-long (length _pid_closed_loop_peak_output0) s)
     (dotimes (i (length _pid_closed_loop_peak_output0))
       (sys::poke (elt _pid_closed_loop_peak_output0 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32[] _pid_closed_loop_period0
     (write-long (length _pid_closed_loop_period0) s)
     (dotimes (i (length _pid_closed_loop_period0))
       (write-long (elt _pid_closed_loop_period0 i) s)
       )
     ;; float64[] _pid_p1
     (write-long (length _pid_p1) s)
     (dotimes (i (length _pid_p1))
       (sys::poke (elt _pid_p1 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _pid_i1
     (write-long (length _pid_i1) s)
     (dotimes (i (length _pid_i1))
       (sys::poke (elt _pid_i1 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _pid_d1
     (write-long (length _pid_d1) s)
     (dotimes (i (length _pid_d1))
       (sys::poke (elt _pid_d1 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _pid_f1
     (write-long (length _pid_f1) s)
     (dotimes (i (length _pid_f1))
       (sys::poke (elt _pid_f1 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32[] _pid_izone1
     (write-long (length _pid_izone1) s)
     (dotimes (i (length _pid_izone1))
       (write-long (elt _pid_izone1 i) s)
       )
     ;; int32[] _pid_allowable_closed_loop_error1
     (write-long (length _pid_allowable_closed_loop_error1) s)
     (dotimes (i (length _pid_allowable_closed_loop_error1))
       (write-long (elt _pid_allowable_closed_loop_error1 i) s)
       )
     ;; float64[] _pid_max_integral_accumulator1
     (write-long (length _pid_max_integral_accumulator1) s)
     (dotimes (i (length _pid_max_integral_accumulator1))
       (sys::poke (elt _pid_max_integral_accumulator1 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _pid_closed_loop_peak_output1
     (write-long (length _pid_closed_loop_peak_output1) s)
     (dotimes (i (length _pid_closed_loop_peak_output1))
       (sys::poke (elt _pid_closed_loop_peak_output1 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32[] _pid_closed_loop_period1
     (write-long (length _pid_closed_loop_period1) s)
     (dotimes (i (length _pid_closed_loop_period1))
       (write-long (elt _pid_closed_loop_period1 i) s)
       )
     ;; float64[] _pid_p2
     (write-long (length _pid_p2) s)
     (dotimes (i (length _pid_p2))
       (sys::poke (elt _pid_p2 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _pid_i2
     (write-long (length _pid_i2) s)
     (dotimes (i (length _pid_i2))
       (sys::poke (elt _pid_i2 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _pid_d2
     (write-long (length _pid_d2) s)
     (dotimes (i (length _pid_d2))
       (sys::poke (elt _pid_d2 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _pid_f2
     (write-long (length _pid_f2) s)
     (dotimes (i (length _pid_f2))
       (sys::poke (elt _pid_f2 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32[] _pid_izone2
     (write-long (length _pid_izone2) s)
     (dotimes (i (length _pid_izone2))
       (write-long (elt _pid_izone2 i) s)
       )
     ;; int32[] _pid_allowable_closed_loop_error2
     (write-long (length _pid_allowable_closed_loop_error2) s)
     (dotimes (i (length _pid_allowable_closed_loop_error2))
       (write-long (elt _pid_allowable_closed_loop_error2 i) s)
       )
     ;; float64[] _pid_max_integral_accumulator2
     (write-long (length _pid_max_integral_accumulator2) s)
     (dotimes (i (length _pid_max_integral_accumulator2))
       (sys::poke (elt _pid_max_integral_accumulator2 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _pid_closed_loop_peak_output2
     (write-long (length _pid_closed_loop_peak_output2) s)
     (dotimes (i (length _pid_closed_loop_peak_output2))
       (sys::poke (elt _pid_closed_loop_peak_output2 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32[] _pid_closed_loop_period2
     (write-long (length _pid_closed_loop_period2) s)
     (dotimes (i (length _pid_closed_loop_period2))
       (write-long (elt _pid_closed_loop_period2 i) s)
       )
     ;; float64[] _pid_p3
     (write-long (length _pid_p3) s)
     (dotimes (i (length _pid_p3))
       (sys::poke (elt _pid_p3 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _pid_i3
     (write-long (length _pid_i3) s)
     (dotimes (i (length _pid_i3))
       (sys::poke (elt _pid_i3 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _pid_d3
     (write-long (length _pid_d3) s)
     (dotimes (i (length _pid_d3))
       (sys::poke (elt _pid_d3 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _pid_f3
     (write-long (length _pid_f3) s)
     (dotimes (i (length _pid_f3))
       (sys::poke (elt _pid_f3 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32[] _pid_izone3
     (write-long (length _pid_izone3) s)
     (dotimes (i (length _pid_izone3))
       (write-long (elt _pid_izone3 i) s)
       )
     ;; int32[] _pid_allowable_closed_loop_error3
     (write-long (length _pid_allowable_closed_loop_error3) s)
     (dotimes (i (length _pid_allowable_closed_loop_error3))
       (write-long (elt _pid_allowable_closed_loop_error3 i) s)
       )
     ;; float64[] _pid_max_integral_accumulator3
     (write-long (length _pid_max_integral_accumulator3) s)
     (dotimes (i (length _pid_max_integral_accumulator3))
       (sys::poke (elt _pid_max_integral_accumulator3 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _pid_closed_loop_peak_output3
     (write-long (length _pid_closed_loop_peak_output3) s)
     (dotimes (i (length _pid_closed_loop_peak_output3))
       (sys::poke (elt _pid_closed_loop_peak_output3 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32[] _pid_closed_loop_period3
     (write-long (length _pid_closed_loop_period3) s)
     (dotimes (i (length _pid_closed_loop_period3))
       (write-long (elt _pid_closed_loop_period3 i) s)
       )
     ;; bool[] _aux_pid_polarity
     (write-long (length _aux_pid_polarity) s)
     (dotimes (i (length _aux_pid_polarity))
       (if (elt _aux_pid_polarity i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _invert
     (write-long (length _invert) s)
     (dotimes (i (length _invert))
       (if (elt _invert i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _sensorPhase
     (write-long (length _sensorPhase) s)
     (dotimes (i (length _sensorPhase))
       (if (elt _sensorPhase i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; string[] _neutral_mode
     (write-long (length _neutral_mode) s)
     (dolist (elem _neutral_mode)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _closed_loop_ramp
     (write-long (length _closed_loop_ramp) s)
     (dotimes (i (length _closed_loop_ramp))
       (sys::poke (elt _closed_loop_ramp i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _open_loop_ramp
     (write-long (length _open_loop_ramp) s)
     (dotimes (i (length _open_loop_ramp))
       (sys::poke (elt _open_loop_ramp i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _peak_output_forward
     (write-long (length _peak_output_forward) s)
     (dotimes (i (length _peak_output_forward))
       (sys::poke (elt _peak_output_forward i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _peak_output_reverse
     (write-long (length _peak_output_reverse) s)
     (dotimes (i (length _peak_output_reverse))
       (sys::poke (elt _peak_output_reverse i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _nominal_output_forward
     (write-long (length _nominal_output_forward) s)
     (dotimes (i (length _nominal_output_forward))
       (sys::poke (elt _nominal_output_forward i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _nominal_output_reverse
     (write-long (length _nominal_output_reverse) s)
     (dotimes (i (length _nominal_output_reverse))
       (sys::poke (elt _nominal_output_reverse i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _neutral_deadband
     (write-long (length _neutral_deadband) s)
     (dotimes (i (length _neutral_deadband))
       (sys::poke (elt _neutral_deadband i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _voltage_compensation_saturation
     (write-long (length _voltage_compensation_saturation) s)
     (dotimes (i (length _voltage_compensation_saturation))
       (sys::poke (elt _voltage_compensation_saturation i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32[] _voltage_measurement_filter
     (write-long (length _voltage_measurement_filter) s)
     (dotimes (i (length _voltage_measurement_filter))
       (write-long (elt _voltage_measurement_filter i) s)
       )
     ;; bool[] _voltage_compensation_enable
     (write-long (length _voltage_compensation_enable) s)
     (dotimes (i (length _voltage_compensation_enable))
       (if (elt _voltage_compensation_enable i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; int32[] _velocity_measurement_period
     (write-long (length _velocity_measurement_period) s)
     (dotimes (i (length _velocity_measurement_period))
       (write-long (elt _velocity_measurement_period i) s)
       )
     ;; int32[] _velocity_measurement_window
     (write-long (length _velocity_measurement_window) s)
     (dotimes (i (length _velocity_measurement_window))
       (write-long (elt _velocity_measurement_window i) s)
       )
     ;; string[] _limit_switch_local_forward_source
     (write-long (length _limit_switch_local_forward_source) s)
     (dolist (elem _limit_switch_local_forward_source)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _limit_switch_local_forward_normal
     (write-long (length _limit_switch_local_forward_normal) s)
     (dolist (elem _limit_switch_local_forward_normal)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _limit_switch_local_reverse_source
     (write-long (length _limit_switch_local_reverse_source) s)
     (dolist (elem _limit_switch_local_reverse_source)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _limit_switch_local_reverse_normal
     (write-long (length _limit_switch_local_reverse_normal) s)
     (dolist (elem _limit_switch_local_reverse_normal)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _limit_switch_remote_forward_source
     (write-long (length _limit_switch_remote_forward_source) s)
     (dolist (elem _limit_switch_remote_forward_source)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _limit_switch_remote_forward_normal
     (write-long (length _limit_switch_remote_forward_normal) s)
     (dolist (elem _limit_switch_remote_forward_normal)
       (write-long (length elem) s) (princ elem s)
       )
     ;; uint8[] _limit_switch_remote_forward_id
     (write-long (length _limit_switch_remote_forward_id) s)
     (princ _limit_switch_remote_forward_id s)
     ;; string[] _limit_switch_remote_reverse_source
     (write-long (length _limit_switch_remote_reverse_source) s)
     (dolist (elem _limit_switch_remote_reverse_source)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _limit_switch_remote_reverse_normal
     (write-long (length _limit_switch_remote_reverse_normal) s)
     (dolist (elem _limit_switch_remote_reverse_normal)
       (write-long (length elem) s) (princ elem s)
       )
     ;; uint8[] _limit_switch_remote_reverse_id
     (write-long (length _limit_switch_remote_reverse_id) s)
     (princ _limit_switch_remote_reverse_id s)
     ;; float64[] _softlimit_forward_threshold
     (write-long (length _softlimit_forward_threshold) s)
     (dotimes (i (length _softlimit_forward_threshold))
       (sys::poke (elt _softlimit_forward_threshold i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool[] _softlimit_forward_enable
     (write-long (length _softlimit_forward_enable) s)
     (dotimes (i (length _softlimit_forward_enable))
       (if (elt _softlimit_forward_enable i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; float64[] _softlimit_reverse_threshold
     (write-long (length _softlimit_reverse_threshold) s)
     (dotimes (i (length _softlimit_reverse_threshold))
       (sys::poke (elt _softlimit_reverse_threshold i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool[] _softlimit_reverse_enable
     (write-long (length _softlimit_reverse_enable) s)
     (dotimes (i (length _softlimit_reverse_enable))
       (if (elt _softlimit_reverse_enable i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _softlimits_override_enable
     (write-long (length _softlimits_override_enable) s)
     (dotimes (i (length _softlimits_override_enable))
       (if (elt _softlimits_override_enable i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; int32[] _current_limit_peak_amps
     (write-long (length _current_limit_peak_amps) s)
     (dotimes (i (length _current_limit_peak_amps))
       (write-long (elt _current_limit_peak_amps i) s)
       )
     ;; int32[] _current_limit_peak_msec
     (write-long (length _current_limit_peak_msec) s)
     (dotimes (i (length _current_limit_peak_msec))
       (write-long (elt _current_limit_peak_msec i) s)
       )
     ;; int32[] _current_limit_continuous_amps
     (write-long (length _current_limit_continuous_amps) s)
     (dotimes (i (length _current_limit_continuous_amps))
       (write-long (elt _current_limit_continuous_amps i) s)
       )
     ;; bool[] _current_limit_enable
     (write-long (length _current_limit_enable) s)
     (dotimes (i (length _current_limit_enable))
       (if (elt _current_limit_enable i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; float64[] _motion_cruise_velocity
     (write-long (length _motion_cruise_velocity) s)
     (dotimes (i (length _motion_cruise_velocity))
       (sys::poke (elt _motion_cruise_velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _motion_acceleration
     (write-long (length _motion_acceleration) s)
     (dotimes (i (length _motion_acceleration))
       (sys::poke (elt _motion_acceleration i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint8[] _motion_s_curve_strength
     (write-long (length _motion_s_curve_strength) s)
     (princ _motion_s_curve_strength s)
     ;; uint8[] _status_1_general_period
     (write-long (length _status_1_general_period) s)
     (princ _status_1_general_period s)
     ;; uint8[] _status_2_feedback0_period
     (write-long (length _status_2_feedback0_period) s)
     (princ _status_2_feedback0_period s)
     ;; uint8[] _status_3_quadrature_period
     (write-long (length _status_3_quadrature_period) s)
     (princ _status_3_quadrature_period s)
     ;; uint8[] _status_4_aintempvbat_period
     (write-long (length _status_4_aintempvbat_period) s)
     (princ _status_4_aintempvbat_period s)
     ;; uint8[] _status_6_misc_period
     (write-long (length _status_6_misc_period) s)
     (princ _status_6_misc_period s)
     ;; uint8[] _status_7_commstatus_period
     (write-long (length _status_7_commstatus_period) s)
     (princ _status_7_commstatus_period s)
     ;; uint8[] _status_8_pulsewidth_period
     (write-long (length _status_8_pulsewidth_period) s)
     (princ _status_8_pulsewidth_period s)
     ;; uint8[] _status_9_motprofbuffer_period
     (write-long (length _status_9_motprofbuffer_period) s)
     (princ _status_9_motprofbuffer_period s)
     ;; uint8[] _status_10_motionmagic_period
     (write-long (length _status_10_motionmagic_period) s)
     (princ _status_10_motionmagic_period s)
     ;; uint8[] _status_11_uartgadgeteer_period
     (write-long (length _status_11_uartgadgeteer_period) s)
     (princ _status_11_uartgadgeteer_period s)
     ;; uint8[] _status_12_feedback1_period
     (write-long (length _status_12_feedback1_period) s)
     (princ _status_12_feedback1_period s)
     ;; uint8[] _status_13_base_pidf0_period
     (write-long (length _status_13_base_pidf0_period) s)
     (princ _status_13_base_pidf0_period s)
     ;; uint8[] _status_14_turn_pidf1_period
     (write-long (length _status_14_turn_pidf1_period) s)
     (princ _status_14_turn_pidf1_period s)
     ;; uint8[] _status_15_firmwareapistatus_period
     (write-long (length _status_15_firmwareapistatus_period) s)
     (princ _status_15_firmwareapistatus_period s)
     ;; uint8[] _control_3_general_period
     (write-long (length _control_3_general_period) s)
     (princ _control_3_general_period s)
     ;; uint8[] _control_4_advanced_period
     (write-long (length _control_4_advanced_period) s)
     (princ _control_4_advanced_period s)
     ;; uint8[] _control_5_feedbackoutputoverride_period
     (write-long (length _control_5_feedbackoutputoverride_period) s)
     (princ _control_5_feedbackoutputoverride_period s)
     ;; uint8[] _control_6_motprofaddtrajpoint_period
     (write-long (length _control_6_motprofaddtrajpoint_period) s)
     (princ _control_6_motprofaddtrajpoint_period s)
     ;; float64[] _motion_profile_trajectory_period
     (write-long (length _motion_profile_trajectory_period) s)
     (dotimes (i (length _motion_profile_trajectory_period))
       (sys::poke (elt _motion_profile_trajectory_period i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _conversion_factor
     (write-long (length _conversion_factor) s)
     (dotimes (i (length _conversion_factor))
       (sys::poke (elt _conversion_factor i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; string[] _firmware_version
     (write-long (length _firmware_version) s)
     (dolist (elem _firmware_version)
       (write-long (length elem) s) (princ elem s)
       )
     ;; bool[] _water_game
     (write-long (length _water_game) s)
     (dotimes (i (length _water_game))
       (if (elt _water_game i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int8[] _can_id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _can_id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _can_id i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _can_id i) 127) (setf (elt _can_id i) (- (elt _can_id i) 256)))
     ))
   ;; float64[] _feedback_coefficient
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _feedback_coefficient (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _feedback_coefficient i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; string[] _feedback_sensor
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _feedback_sensor (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _feedback_sensor i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _remote_feedback_sensor
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _remote_feedback_sensor (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _remote_feedback_sensor i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int8[] _remote_feedback_device_id0
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _remote_feedback_device_id0 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _remote_feedback_device_id0 i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _remote_feedback_device_id0 i) 127) (setf (elt _remote_feedback_device_id0 i) (- (elt _remote_feedback_device_id0 i) 256)))
     ))
   ;; string[] _remote_feedback_filter0
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _remote_feedback_filter0 (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _remote_feedback_filter0 i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int8[] _remote_feedback_device_id1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _remote_feedback_device_id1 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _remote_feedback_device_id1 i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _remote_feedback_device_id1 i) 127) (setf (elt _remote_feedback_device_id1 i) (- (elt _remote_feedback_device_id1 i) 256)))
     ))
   ;; string[] _remote_feedback_filter1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _remote_feedback_filter1 (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _remote_feedback_filter1 i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _sensor_term_sum0
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sensor_term_sum0 (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _sensor_term_sum0 i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _sensor_term_sum1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sensor_term_sum1 (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _sensor_term_sum1 i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _sensor_term_diff0
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sensor_term_diff0 (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _sensor_term_diff0 i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _sensor_term_diff1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sensor_term_diff1 (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _sensor_term_diff1 i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int32[] _encoder_ticks_per_rotation
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _encoder_ticks_per_rotation (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _encoder_ticks_per_rotation i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _pid_slot
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_slot (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pid_slot i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _pid_p0
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_p0 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pid_p0 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _pid_i0
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_i0 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pid_i0 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _pid_d0
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_d0 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pid_d0 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _pid_f0
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_f0 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pid_f0 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int32[] _pid_izone0
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_izone0 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pid_izone0 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _pid_allowable_closed_loop_error0
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_allowable_closed_loop_error0 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pid_allowable_closed_loop_error0 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _pid_max_integral_accumulator0
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_max_integral_accumulator0 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pid_max_integral_accumulator0 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _pid_closed_loop_peak_output0
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_closed_loop_peak_output0 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pid_closed_loop_peak_output0 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int32[] _pid_closed_loop_period0
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_closed_loop_period0 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pid_closed_loop_period0 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _pid_p1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_p1 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pid_p1 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _pid_i1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_i1 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pid_i1 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _pid_d1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_d1 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pid_d1 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _pid_f1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_f1 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pid_f1 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int32[] _pid_izone1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_izone1 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pid_izone1 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _pid_allowable_closed_loop_error1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_allowable_closed_loop_error1 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pid_allowable_closed_loop_error1 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _pid_max_integral_accumulator1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_max_integral_accumulator1 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pid_max_integral_accumulator1 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _pid_closed_loop_peak_output1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_closed_loop_peak_output1 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pid_closed_loop_peak_output1 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int32[] _pid_closed_loop_period1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_closed_loop_period1 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pid_closed_loop_period1 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _pid_p2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_p2 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pid_p2 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _pid_i2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_i2 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pid_i2 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _pid_d2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_d2 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pid_d2 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _pid_f2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_f2 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pid_f2 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int32[] _pid_izone2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_izone2 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pid_izone2 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _pid_allowable_closed_loop_error2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_allowable_closed_loop_error2 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pid_allowable_closed_loop_error2 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _pid_max_integral_accumulator2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_max_integral_accumulator2 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pid_max_integral_accumulator2 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _pid_closed_loop_peak_output2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_closed_loop_peak_output2 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pid_closed_loop_peak_output2 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int32[] _pid_closed_loop_period2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_closed_loop_period2 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pid_closed_loop_period2 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _pid_p3
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_p3 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pid_p3 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _pid_i3
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_i3 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pid_i3 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _pid_d3
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_d3 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pid_d3 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _pid_f3
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_f3 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pid_f3 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int32[] _pid_izone3
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_izone3 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pid_izone3 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _pid_allowable_closed_loop_error3
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_allowable_closed_loop_error3 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pid_allowable_closed_loop_error3 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _pid_max_integral_accumulator3
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_max_integral_accumulator3 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pid_max_integral_accumulator3 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _pid_closed_loop_peak_output3
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_closed_loop_peak_output3 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pid_closed_loop_peak_output3 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int32[] _pid_closed_loop_period3
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pid_closed_loop_period3 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pid_closed_loop_period3 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; bool[] _aux_pid_polarity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _aux_pid_polarity (make-list n))
     (dotimes (i n)
     (setf (elt _aux_pid_polarity i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _invert
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _invert (make-list n))
     (dotimes (i n)
     (setf (elt _invert i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _sensorPhase
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sensorPhase (make-list n))
     (dotimes (i n)
     (setf (elt _sensorPhase i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; string[] _neutral_mode
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _neutral_mode (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _neutral_mode i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _closed_loop_ramp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _closed_loop_ramp (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _closed_loop_ramp i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _open_loop_ramp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _open_loop_ramp (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _open_loop_ramp i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _peak_output_forward
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _peak_output_forward (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _peak_output_forward i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _peak_output_reverse
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _peak_output_reverse (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _peak_output_reverse i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _nominal_output_forward
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _nominal_output_forward (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _nominal_output_forward i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _nominal_output_reverse
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _nominal_output_reverse (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _nominal_output_reverse i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _neutral_deadband
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _neutral_deadband (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _neutral_deadband i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _voltage_compensation_saturation
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _voltage_compensation_saturation (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _voltage_compensation_saturation i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int32[] _voltage_measurement_filter
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _voltage_measurement_filter (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _voltage_measurement_filter i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; bool[] _voltage_compensation_enable
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _voltage_compensation_enable (make-list n))
     (dotimes (i n)
     (setf (elt _voltage_compensation_enable i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; int32[] _velocity_measurement_period
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity_measurement_period (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _velocity_measurement_period i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _velocity_measurement_window
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity_measurement_window (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _velocity_measurement_window i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string[] _limit_switch_local_forward_source
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _limit_switch_local_forward_source (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _limit_switch_local_forward_source i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _limit_switch_local_forward_normal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _limit_switch_local_forward_normal (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _limit_switch_local_forward_normal i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _limit_switch_local_reverse_source
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _limit_switch_local_reverse_source (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _limit_switch_local_reverse_source i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _limit_switch_local_reverse_normal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _limit_switch_local_reverse_normal (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _limit_switch_local_reverse_normal i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _limit_switch_remote_forward_source
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _limit_switch_remote_forward_source (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _limit_switch_remote_forward_source i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _limit_switch_remote_forward_normal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _limit_switch_remote_forward_normal (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _limit_switch_remote_forward_normal i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; uint8[] _limit_switch_remote_forward_id
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _limit_switch_remote_forward_id (make-array n :element-type :char))
     (replace _limit_switch_remote_forward_id buf :start2 ptr-) (incf ptr- n))
   ;; string[] _limit_switch_remote_reverse_source
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _limit_switch_remote_reverse_source (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _limit_switch_remote_reverse_source i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _limit_switch_remote_reverse_normal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _limit_switch_remote_reverse_normal (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _limit_switch_remote_reverse_normal i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; uint8[] _limit_switch_remote_reverse_id
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _limit_switch_remote_reverse_id (make-array n :element-type :char))
     (replace _limit_switch_remote_reverse_id buf :start2 ptr-) (incf ptr- n))
   ;; float64[] _softlimit_forward_threshold
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _softlimit_forward_threshold (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _softlimit_forward_threshold i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; bool[] _softlimit_forward_enable
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _softlimit_forward_enable (make-list n))
     (dotimes (i n)
     (setf (elt _softlimit_forward_enable i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; float64[] _softlimit_reverse_threshold
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _softlimit_reverse_threshold (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _softlimit_reverse_threshold i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; bool[] _softlimit_reverse_enable
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _softlimit_reverse_enable (make-list n))
     (dotimes (i n)
     (setf (elt _softlimit_reverse_enable i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _softlimits_override_enable
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _softlimits_override_enable (make-list n))
     (dotimes (i n)
     (setf (elt _softlimits_override_enable i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; int32[] _current_limit_peak_amps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current_limit_peak_amps (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _current_limit_peak_amps i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _current_limit_peak_msec
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current_limit_peak_msec (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _current_limit_peak_msec i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _current_limit_continuous_amps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current_limit_continuous_amps (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _current_limit_continuous_amps i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; bool[] _current_limit_enable
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current_limit_enable (make-list n))
     (dotimes (i n)
     (setf (elt _current_limit_enable i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; float64[] _motion_cruise_velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motion_cruise_velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _motion_cruise_velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _motion_acceleration
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motion_acceleration (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _motion_acceleration i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; uint8[] _motion_s_curve_strength
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _motion_s_curve_strength (make-array n :element-type :char))
     (replace _motion_s_curve_strength buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _status_1_general_period
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _status_1_general_period (make-array n :element-type :char))
     (replace _status_1_general_period buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _status_2_feedback0_period
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _status_2_feedback0_period (make-array n :element-type :char))
     (replace _status_2_feedback0_period buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _status_3_quadrature_period
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _status_3_quadrature_period (make-array n :element-type :char))
     (replace _status_3_quadrature_period buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _status_4_aintempvbat_period
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _status_4_aintempvbat_period (make-array n :element-type :char))
     (replace _status_4_aintempvbat_period buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _status_6_misc_period
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _status_6_misc_period (make-array n :element-type :char))
     (replace _status_6_misc_period buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _status_7_commstatus_period
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _status_7_commstatus_period (make-array n :element-type :char))
     (replace _status_7_commstatus_period buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _status_8_pulsewidth_period
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _status_8_pulsewidth_period (make-array n :element-type :char))
     (replace _status_8_pulsewidth_period buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _status_9_motprofbuffer_period
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _status_9_motprofbuffer_period (make-array n :element-type :char))
     (replace _status_9_motprofbuffer_period buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _status_10_motionmagic_period
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _status_10_motionmagic_period (make-array n :element-type :char))
     (replace _status_10_motionmagic_period buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _status_11_uartgadgeteer_period
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _status_11_uartgadgeteer_period (make-array n :element-type :char))
     (replace _status_11_uartgadgeteer_period buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _status_12_feedback1_period
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _status_12_feedback1_period (make-array n :element-type :char))
     (replace _status_12_feedback1_period buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _status_13_base_pidf0_period
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _status_13_base_pidf0_period (make-array n :element-type :char))
     (replace _status_13_base_pidf0_period buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _status_14_turn_pidf1_period
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _status_14_turn_pidf1_period (make-array n :element-type :char))
     (replace _status_14_turn_pidf1_period buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _status_15_firmwareapistatus_period
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _status_15_firmwareapistatus_period (make-array n :element-type :char))
     (replace _status_15_firmwareapistatus_period buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _control_3_general_period
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _control_3_general_period (make-array n :element-type :char))
     (replace _control_3_general_period buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _control_4_advanced_period
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _control_4_advanced_period (make-array n :element-type :char))
     (replace _control_4_advanced_period buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _control_5_feedbackoutputoverride_period
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _control_5_feedbackoutputoverride_period (make-array n :element-type :char))
     (replace _control_5_feedbackoutputoverride_period buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _control_6_motprofaddtrajpoint_period
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _control_6_motprofaddtrajpoint_period (make-array n :element-type :char))
     (replace _control_6_motprofaddtrajpoint_period buf :start2 ptr-) (incf ptr- n))
   ;; float64[] _motion_profile_trajectory_period
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motion_profile_trajectory_period (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _motion_profile_trajectory_period i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _conversion_factor
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _conversion_factor (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _conversion_factor i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; string[] _firmware_version
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _firmware_version (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _firmware_version i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; bool[] _water_game
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _water_game (make-list n))
     (dotimes (i n)
     (setf (elt _water_game i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get talon_state_msgs::TalonConfig :md5sum-) "c581b95d041ee8a7724c07ef2b96b2da")
(setf (get talon_state_msgs::TalonConfig :datatype-) "talon_state_msgs/TalonConfig")
(setf (get talon_state_msgs::TalonConfig :definition-)
      "Header header

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

")



(provide :talon_state_msgs/TalonConfig "c581b95d041ee8a7724c07ef2b96b2da")


