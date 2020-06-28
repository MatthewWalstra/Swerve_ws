;; Auto-generated. Do not edit!


(when (boundp 'talon_state_msgs::TalonState)
  (if (not (find-package "TALON_STATE_MSGS"))
    (make-package "TALON_STATE_MSGS"))
  (shadow 'TalonState (find-package "TALON_STATE_MSGS")))
(unless (find-package "TALON_STATE_MSGS::TALONSTATE")
  (make-package "TALON_STATE_MSGS::TALONSTATE"))

(in-package "ROS")
;;//! \htmlinclude TalonState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass talon_state_msgs::TalonState
  :super ros::object
  :slots (_header _name _talon_mode _demand1_type _demand1_value _position _speed _output_voltage _output_current _bus_voltage _motor_output_percent _temperature _set_point _closed_loop_error _integral_accumulator _error_derivative _closed_loop_target _p_term _i_term _d_term _f_term _active_trajectory_position _active_trajectory_velocity _active_trajectory_arbitrary_feed_forward _active_trajectory_heading _forward_limit_switch _reverse_limit_switch _forward_softlimit _reverse_softlimit _neutral_output _motion_profile_top_level_buffer_count _motion_profile_top_level_buffer_full _motion_profile_status_top_buffer_rem _motion_profile_status_top_buffer_cnt _motion_profile_status_btm_buffer_cnt _motion_profile_status_has_underrun _motion_profile_status_is_underrun _motion_profile_status_active_point_valid _motion_profile_status_is_last _motion_profile_status_profile_slot_select0 _motion_profile_status_profile_slot_select1 _motion_profile_status_output_enable _motion_profile_time_dur_ms _faults _sticky_faults _conversion_factor _custom_profile_status ))

(defmethod talon_state_msgs::TalonState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:talon_mode __talon_mode) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:demand1_type __demand1_type) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:demand1_value __demand1_value) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:position __position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:speed __speed) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:output_voltage __output_voltage) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:output_current __output_current) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:bus_voltage __bus_voltage) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:motor_output_percent __motor_output_percent) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:temperature __temperature) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:set_point __set_point) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:closed_loop_error __closed_loop_error) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:integral_accumulator __integral_accumulator) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:error_derivative __error_derivative) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:closed_loop_target __closed_loop_target) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:p_term __p_term) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:i_term __i_term) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:d_term __d_term) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:f_term __f_term) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:active_trajectory_position __active_trajectory_position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:active_trajectory_velocity __active_trajectory_velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:active_trajectory_arbitrary_feed_forward __active_trajectory_arbitrary_feed_forward) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:active_trajectory_heading __active_trajectory_heading) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:forward_limit_switch __forward_limit_switch) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:reverse_limit_switch __reverse_limit_switch) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:forward_softlimit __forward_softlimit) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:reverse_softlimit __reverse_softlimit) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:neutral_output __neutral_output) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:motion_profile_top_level_buffer_count __motion_profile_top_level_buffer_count) (make-array 0 :initial-element 0 :element-type :integer))
    ((:motion_profile_top_level_buffer_full __motion_profile_top_level_buffer_full) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:motion_profile_status_top_buffer_rem __motion_profile_status_top_buffer_rem) (make-array 0 :initial-element 0 :element-type :integer))
    ((:motion_profile_status_top_buffer_cnt __motion_profile_status_top_buffer_cnt) (make-array 0 :initial-element 0 :element-type :integer))
    ((:motion_profile_status_btm_buffer_cnt __motion_profile_status_btm_buffer_cnt) (make-array 0 :initial-element 0 :element-type :integer))
    ((:motion_profile_status_has_underrun __motion_profile_status_has_underrun) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:motion_profile_status_is_underrun __motion_profile_status_is_underrun) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:motion_profile_status_active_point_valid __motion_profile_status_active_point_valid) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:motion_profile_status_is_last __motion_profile_status_is_last) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:motion_profile_status_profile_slot_select0 __motion_profile_status_profile_slot_select0) (make-array 0 :initial-element 0 :element-type :integer))
    ((:motion_profile_status_profile_slot_select1 __motion_profile_status_profile_slot_select1) (make-array 0 :initial-element 0 :element-type :integer))
    ((:motion_profile_status_output_enable __motion_profile_status_output_enable) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:motion_profile_time_dur_ms __motion_profile_time_dur_ms) (make-array 0 :initial-element 0 :element-type :integer))
    ((:faults __faults) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:sticky_faults __sticky_faults) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:conversion_factor __conversion_factor) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:custom_profile_status __custom_profile_status) (let (r) (dotimes (i 0) (push (instance talon_state_msgs::CustomProfileStatus :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _name __name)
   (setq _talon_mode __talon_mode)
   (setq _demand1_type __demand1_type)
   (setq _demand1_value __demand1_value)
   (setq _position __position)
   (setq _speed __speed)
   (setq _output_voltage __output_voltage)
   (setq _output_current __output_current)
   (setq _bus_voltage __bus_voltage)
   (setq _motor_output_percent __motor_output_percent)
   (setq _temperature __temperature)
   (setq _set_point __set_point)
   (setq _closed_loop_error __closed_loop_error)
   (setq _integral_accumulator __integral_accumulator)
   (setq _error_derivative __error_derivative)
   (setq _closed_loop_target __closed_loop_target)
   (setq _p_term __p_term)
   (setq _i_term __i_term)
   (setq _d_term __d_term)
   (setq _f_term __f_term)
   (setq _active_trajectory_position __active_trajectory_position)
   (setq _active_trajectory_velocity __active_trajectory_velocity)
   (setq _active_trajectory_arbitrary_feed_forward __active_trajectory_arbitrary_feed_forward)
   (setq _active_trajectory_heading __active_trajectory_heading)
   (setq _forward_limit_switch __forward_limit_switch)
   (setq _reverse_limit_switch __reverse_limit_switch)
   (setq _forward_softlimit __forward_softlimit)
   (setq _reverse_softlimit __reverse_softlimit)
   (setq _neutral_output __neutral_output)
   (setq _motion_profile_top_level_buffer_count __motion_profile_top_level_buffer_count)
   (setq _motion_profile_top_level_buffer_full __motion_profile_top_level_buffer_full)
   (setq _motion_profile_status_top_buffer_rem __motion_profile_status_top_buffer_rem)
   (setq _motion_profile_status_top_buffer_cnt __motion_profile_status_top_buffer_cnt)
   (setq _motion_profile_status_btm_buffer_cnt __motion_profile_status_btm_buffer_cnt)
   (setq _motion_profile_status_has_underrun __motion_profile_status_has_underrun)
   (setq _motion_profile_status_is_underrun __motion_profile_status_is_underrun)
   (setq _motion_profile_status_active_point_valid __motion_profile_status_active_point_valid)
   (setq _motion_profile_status_is_last __motion_profile_status_is_last)
   (setq _motion_profile_status_profile_slot_select0 __motion_profile_status_profile_slot_select0)
   (setq _motion_profile_status_profile_slot_select1 __motion_profile_status_profile_slot_select1)
   (setq _motion_profile_status_output_enable __motion_profile_status_output_enable)
   (setq _motion_profile_time_dur_ms __motion_profile_time_dur_ms)
   (setq _faults __faults)
   (setq _sticky_faults __sticky_faults)
   (setq _conversion_factor __conversion_factor)
   (setq _custom_profile_status __custom_profile_status)
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
  (:talon_mode
   (&optional __talon_mode)
   (if __talon_mode (setq _talon_mode __talon_mode)) _talon_mode)
  (:demand1_type
   (&optional __demand1_type)
   (if __demand1_type (setq _demand1_type __demand1_type)) _demand1_type)
  (:demand1_value
   (&optional __demand1_value)
   (if __demand1_value (setq _demand1_value __demand1_value)) _demand1_value)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:output_voltage
   (&optional __output_voltage)
   (if __output_voltage (setq _output_voltage __output_voltage)) _output_voltage)
  (:output_current
   (&optional __output_current)
   (if __output_current (setq _output_current __output_current)) _output_current)
  (:bus_voltage
   (&optional __bus_voltage)
   (if __bus_voltage (setq _bus_voltage __bus_voltage)) _bus_voltage)
  (:motor_output_percent
   (&optional __motor_output_percent)
   (if __motor_output_percent (setq _motor_output_percent __motor_output_percent)) _motor_output_percent)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:set_point
   (&optional __set_point)
   (if __set_point (setq _set_point __set_point)) _set_point)
  (:closed_loop_error
   (&optional __closed_loop_error)
   (if __closed_loop_error (setq _closed_loop_error __closed_loop_error)) _closed_loop_error)
  (:integral_accumulator
   (&optional __integral_accumulator)
   (if __integral_accumulator (setq _integral_accumulator __integral_accumulator)) _integral_accumulator)
  (:error_derivative
   (&optional __error_derivative)
   (if __error_derivative (setq _error_derivative __error_derivative)) _error_derivative)
  (:closed_loop_target
   (&optional __closed_loop_target)
   (if __closed_loop_target (setq _closed_loop_target __closed_loop_target)) _closed_loop_target)
  (:p_term
   (&optional __p_term)
   (if __p_term (setq _p_term __p_term)) _p_term)
  (:i_term
   (&optional __i_term)
   (if __i_term (setq _i_term __i_term)) _i_term)
  (:d_term
   (&optional __d_term)
   (if __d_term (setq _d_term __d_term)) _d_term)
  (:f_term
   (&optional __f_term)
   (if __f_term (setq _f_term __f_term)) _f_term)
  (:active_trajectory_position
   (&optional __active_trajectory_position)
   (if __active_trajectory_position (setq _active_trajectory_position __active_trajectory_position)) _active_trajectory_position)
  (:active_trajectory_velocity
   (&optional __active_trajectory_velocity)
   (if __active_trajectory_velocity (setq _active_trajectory_velocity __active_trajectory_velocity)) _active_trajectory_velocity)
  (:active_trajectory_arbitrary_feed_forward
   (&optional __active_trajectory_arbitrary_feed_forward)
   (if __active_trajectory_arbitrary_feed_forward (setq _active_trajectory_arbitrary_feed_forward __active_trajectory_arbitrary_feed_forward)) _active_trajectory_arbitrary_feed_forward)
  (:active_trajectory_heading
   (&optional __active_trajectory_heading)
   (if __active_trajectory_heading (setq _active_trajectory_heading __active_trajectory_heading)) _active_trajectory_heading)
  (:forward_limit_switch
   (&optional __forward_limit_switch)
   (if __forward_limit_switch (setq _forward_limit_switch __forward_limit_switch)) _forward_limit_switch)
  (:reverse_limit_switch
   (&optional __reverse_limit_switch)
   (if __reverse_limit_switch (setq _reverse_limit_switch __reverse_limit_switch)) _reverse_limit_switch)
  (:forward_softlimit
   (&optional __forward_softlimit)
   (if __forward_softlimit (setq _forward_softlimit __forward_softlimit)) _forward_softlimit)
  (:reverse_softlimit
   (&optional __reverse_softlimit)
   (if __reverse_softlimit (setq _reverse_softlimit __reverse_softlimit)) _reverse_softlimit)
  (:neutral_output
   (&optional __neutral_output)
   (if __neutral_output (setq _neutral_output __neutral_output)) _neutral_output)
  (:motion_profile_top_level_buffer_count
   (&optional __motion_profile_top_level_buffer_count)
   (if __motion_profile_top_level_buffer_count (setq _motion_profile_top_level_buffer_count __motion_profile_top_level_buffer_count)) _motion_profile_top_level_buffer_count)
  (:motion_profile_top_level_buffer_full
   (&optional __motion_profile_top_level_buffer_full)
   (if __motion_profile_top_level_buffer_full (setq _motion_profile_top_level_buffer_full __motion_profile_top_level_buffer_full)) _motion_profile_top_level_buffer_full)
  (:motion_profile_status_top_buffer_rem
   (&optional __motion_profile_status_top_buffer_rem)
   (if __motion_profile_status_top_buffer_rem (setq _motion_profile_status_top_buffer_rem __motion_profile_status_top_buffer_rem)) _motion_profile_status_top_buffer_rem)
  (:motion_profile_status_top_buffer_cnt
   (&optional __motion_profile_status_top_buffer_cnt)
   (if __motion_profile_status_top_buffer_cnt (setq _motion_profile_status_top_buffer_cnt __motion_profile_status_top_buffer_cnt)) _motion_profile_status_top_buffer_cnt)
  (:motion_profile_status_btm_buffer_cnt
   (&optional __motion_profile_status_btm_buffer_cnt)
   (if __motion_profile_status_btm_buffer_cnt (setq _motion_profile_status_btm_buffer_cnt __motion_profile_status_btm_buffer_cnt)) _motion_profile_status_btm_buffer_cnt)
  (:motion_profile_status_has_underrun
   (&optional __motion_profile_status_has_underrun)
   (if __motion_profile_status_has_underrun (setq _motion_profile_status_has_underrun __motion_profile_status_has_underrun)) _motion_profile_status_has_underrun)
  (:motion_profile_status_is_underrun
   (&optional __motion_profile_status_is_underrun)
   (if __motion_profile_status_is_underrun (setq _motion_profile_status_is_underrun __motion_profile_status_is_underrun)) _motion_profile_status_is_underrun)
  (:motion_profile_status_active_point_valid
   (&optional __motion_profile_status_active_point_valid)
   (if __motion_profile_status_active_point_valid (setq _motion_profile_status_active_point_valid __motion_profile_status_active_point_valid)) _motion_profile_status_active_point_valid)
  (:motion_profile_status_is_last
   (&optional __motion_profile_status_is_last)
   (if __motion_profile_status_is_last (setq _motion_profile_status_is_last __motion_profile_status_is_last)) _motion_profile_status_is_last)
  (:motion_profile_status_profile_slot_select0
   (&optional __motion_profile_status_profile_slot_select0)
   (if __motion_profile_status_profile_slot_select0 (setq _motion_profile_status_profile_slot_select0 __motion_profile_status_profile_slot_select0)) _motion_profile_status_profile_slot_select0)
  (:motion_profile_status_profile_slot_select1
   (&optional __motion_profile_status_profile_slot_select1)
   (if __motion_profile_status_profile_slot_select1 (setq _motion_profile_status_profile_slot_select1 __motion_profile_status_profile_slot_select1)) _motion_profile_status_profile_slot_select1)
  (:motion_profile_status_output_enable
   (&optional __motion_profile_status_output_enable)
   (if __motion_profile_status_output_enable (setq _motion_profile_status_output_enable __motion_profile_status_output_enable)) _motion_profile_status_output_enable)
  (:motion_profile_time_dur_ms
   (&optional __motion_profile_time_dur_ms)
   (if __motion_profile_time_dur_ms (setq _motion_profile_time_dur_ms __motion_profile_time_dur_ms)) _motion_profile_time_dur_ms)
  (:faults
   (&optional __faults)
   (if __faults (setq _faults __faults)) _faults)
  (:sticky_faults
   (&optional __sticky_faults)
   (if __sticky_faults (setq _sticky_faults __sticky_faults)) _sticky_faults)
  (:conversion_factor
   (&optional __conversion_factor)
   (if __conversion_factor (setq _conversion_factor __conversion_factor)) _conversion_factor)
  (:custom_profile_status
   (&rest __custom_profile_status)
   (if (keywordp (car __custom_profile_status))
       (send* _custom_profile_status __custom_profile_status)
     (progn
       (if __custom_profile_status (setq _custom_profile_status (car __custom_profile_status)))
       _custom_profile_status)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; string[] _talon_mode
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _talon_mode)) 4
    ;; string[] _demand1_type
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _demand1_type)) 4
    ;; float64[] _demand1_value
    (* 8    (length _demand1_value)) 4
    ;; float64[] _position
    (* 8    (length _position)) 4
    ;; float64[] _speed
    (* 8    (length _speed)) 4
    ;; float64[] _output_voltage
    (* 8    (length _output_voltage)) 4
    ;; float64[] _output_current
    (* 8    (length _output_current)) 4
    ;; float64[] _bus_voltage
    (* 8    (length _bus_voltage)) 4
    ;; float64[] _motor_output_percent
    (* 8    (length _motor_output_percent)) 4
    ;; float64[] _temperature
    (* 8    (length _temperature)) 4
    ;; float64[] _set_point
    (* 8    (length _set_point)) 4
    ;; float64[] _closed_loop_error
    (* 8    (length _closed_loop_error)) 4
    ;; float64[] _integral_accumulator
    (* 8    (length _integral_accumulator)) 4
    ;; float64[] _error_derivative
    (* 8    (length _error_derivative)) 4
    ;; float64[] _closed_loop_target
    (* 8    (length _closed_loop_target)) 4
    ;; float64[] _p_term
    (* 8    (length _p_term)) 4
    ;; float64[] _i_term
    (* 8    (length _i_term)) 4
    ;; float64[] _d_term
    (* 8    (length _d_term)) 4
    ;; float64[] _f_term
    (* 8    (length _f_term)) 4
    ;; float64[] _active_trajectory_position
    (* 8    (length _active_trajectory_position)) 4
    ;; float64[] _active_trajectory_velocity
    (* 8    (length _active_trajectory_velocity)) 4
    ;; float64[] _active_trajectory_arbitrary_feed_forward
    (* 8    (length _active_trajectory_arbitrary_feed_forward)) 4
    ;; float64[] _active_trajectory_heading
    (* 8    (length _active_trajectory_heading)) 4
    ;; bool[] _forward_limit_switch
    (* 1    (length _forward_limit_switch)) 4
    ;; bool[] _reverse_limit_switch
    (* 1    (length _reverse_limit_switch)) 4
    ;; bool[] _forward_softlimit
    (* 1    (length _forward_softlimit)) 4
    ;; bool[] _reverse_softlimit
    (* 1    (length _reverse_softlimit)) 4
    ;; bool[] _neutral_output
    (* 1    (length _neutral_output)) 4
    ;; int32[] _motion_profile_top_level_buffer_count
    (* 4    (length _motion_profile_top_level_buffer_count)) 4
    ;; bool[] _motion_profile_top_level_buffer_full
    (* 1    (length _motion_profile_top_level_buffer_full)) 4
    ;; int32[] _motion_profile_status_top_buffer_rem
    (* 4    (length _motion_profile_status_top_buffer_rem)) 4
    ;; int32[] _motion_profile_status_top_buffer_cnt
    (* 4    (length _motion_profile_status_top_buffer_cnt)) 4
    ;; int32[] _motion_profile_status_btm_buffer_cnt
    (* 4    (length _motion_profile_status_btm_buffer_cnt)) 4
    ;; bool[] _motion_profile_status_has_underrun
    (* 1    (length _motion_profile_status_has_underrun)) 4
    ;; bool[] _motion_profile_status_is_underrun
    (* 1    (length _motion_profile_status_is_underrun)) 4
    ;; bool[] _motion_profile_status_active_point_valid
    (* 1    (length _motion_profile_status_active_point_valid)) 4
    ;; bool[] _motion_profile_status_is_last
    (* 1    (length _motion_profile_status_is_last)) 4
    ;; int32[] _motion_profile_status_profile_slot_select0
    (* 4    (length _motion_profile_status_profile_slot_select0)) 4
    ;; int32[] _motion_profile_status_profile_slot_select1
    (* 4    (length _motion_profile_status_profile_slot_select1)) 4
    ;; string[] _motion_profile_status_output_enable
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _motion_profile_status_output_enable)) 4
    ;; int32[] _motion_profile_time_dur_ms
    (* 4    (length _motion_profile_time_dur_ms)) 4
    ;; string[] _faults
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _faults)) 4
    ;; string[] _sticky_faults
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _sticky_faults)) 4
    ;; float64[] _conversion_factor
    (* 8    (length _conversion_factor)) 4
    ;; talon_state_msgs/CustomProfileStatus[] _custom_profile_status
    (apply #'+ (send-all _custom_profile_status :serialization-length)) 4
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
     ;; string[] _talon_mode
     (write-long (length _talon_mode) s)
     (dolist (elem _talon_mode)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _demand1_type
     (write-long (length _demand1_type) s)
     (dolist (elem _demand1_type)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _demand1_value
     (write-long (length _demand1_value) s)
     (dotimes (i (length _demand1_value))
       (sys::poke (elt _demand1_value i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _position
     (write-long (length _position) s)
     (dotimes (i (length _position))
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _speed
     (write-long (length _speed) s)
     (dotimes (i (length _speed))
       (sys::poke (elt _speed i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _output_voltage
     (write-long (length _output_voltage) s)
     (dotimes (i (length _output_voltage))
       (sys::poke (elt _output_voltage i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _output_current
     (write-long (length _output_current) s)
     (dotimes (i (length _output_current))
       (sys::poke (elt _output_current i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _bus_voltage
     (write-long (length _bus_voltage) s)
     (dotimes (i (length _bus_voltage))
       (sys::poke (elt _bus_voltage i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _motor_output_percent
     (write-long (length _motor_output_percent) s)
     (dotimes (i (length _motor_output_percent))
       (sys::poke (elt _motor_output_percent i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _temperature
     (write-long (length _temperature) s)
     (dotimes (i (length _temperature))
       (sys::poke (elt _temperature i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _set_point
     (write-long (length _set_point) s)
     (dotimes (i (length _set_point))
       (sys::poke (elt _set_point i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _closed_loop_error
     (write-long (length _closed_loop_error) s)
     (dotimes (i (length _closed_loop_error))
       (sys::poke (elt _closed_loop_error i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _integral_accumulator
     (write-long (length _integral_accumulator) s)
     (dotimes (i (length _integral_accumulator))
       (sys::poke (elt _integral_accumulator i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _error_derivative
     (write-long (length _error_derivative) s)
     (dotimes (i (length _error_derivative))
       (sys::poke (elt _error_derivative i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _closed_loop_target
     (write-long (length _closed_loop_target) s)
     (dotimes (i (length _closed_loop_target))
       (sys::poke (elt _closed_loop_target i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _p_term
     (write-long (length _p_term) s)
     (dotimes (i (length _p_term))
       (sys::poke (elt _p_term i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _i_term
     (write-long (length _i_term) s)
     (dotimes (i (length _i_term))
       (sys::poke (elt _i_term i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _d_term
     (write-long (length _d_term) s)
     (dotimes (i (length _d_term))
       (sys::poke (elt _d_term i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _f_term
     (write-long (length _f_term) s)
     (dotimes (i (length _f_term))
       (sys::poke (elt _f_term i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _active_trajectory_position
     (write-long (length _active_trajectory_position) s)
     (dotimes (i (length _active_trajectory_position))
       (sys::poke (elt _active_trajectory_position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _active_trajectory_velocity
     (write-long (length _active_trajectory_velocity) s)
     (dotimes (i (length _active_trajectory_velocity))
       (sys::poke (elt _active_trajectory_velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _active_trajectory_arbitrary_feed_forward
     (write-long (length _active_trajectory_arbitrary_feed_forward) s)
     (dotimes (i (length _active_trajectory_arbitrary_feed_forward))
       (sys::poke (elt _active_trajectory_arbitrary_feed_forward i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _active_trajectory_heading
     (write-long (length _active_trajectory_heading) s)
     (dotimes (i (length _active_trajectory_heading))
       (sys::poke (elt _active_trajectory_heading i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool[] _forward_limit_switch
     (write-long (length _forward_limit_switch) s)
     (dotimes (i (length _forward_limit_switch))
       (if (elt _forward_limit_switch i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _reverse_limit_switch
     (write-long (length _reverse_limit_switch) s)
     (dotimes (i (length _reverse_limit_switch))
       (if (elt _reverse_limit_switch i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _forward_softlimit
     (write-long (length _forward_softlimit) s)
     (dotimes (i (length _forward_softlimit))
       (if (elt _forward_softlimit i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _reverse_softlimit
     (write-long (length _reverse_softlimit) s)
     (dotimes (i (length _reverse_softlimit))
       (if (elt _reverse_softlimit i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _neutral_output
     (write-long (length _neutral_output) s)
     (dotimes (i (length _neutral_output))
       (if (elt _neutral_output i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; int32[] _motion_profile_top_level_buffer_count
     (write-long (length _motion_profile_top_level_buffer_count) s)
     (dotimes (i (length _motion_profile_top_level_buffer_count))
       (write-long (elt _motion_profile_top_level_buffer_count i) s)
       )
     ;; bool[] _motion_profile_top_level_buffer_full
     (write-long (length _motion_profile_top_level_buffer_full) s)
     (dotimes (i (length _motion_profile_top_level_buffer_full))
       (if (elt _motion_profile_top_level_buffer_full i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; int32[] _motion_profile_status_top_buffer_rem
     (write-long (length _motion_profile_status_top_buffer_rem) s)
     (dotimes (i (length _motion_profile_status_top_buffer_rem))
       (write-long (elt _motion_profile_status_top_buffer_rem i) s)
       )
     ;; int32[] _motion_profile_status_top_buffer_cnt
     (write-long (length _motion_profile_status_top_buffer_cnt) s)
     (dotimes (i (length _motion_profile_status_top_buffer_cnt))
       (write-long (elt _motion_profile_status_top_buffer_cnt i) s)
       )
     ;; int32[] _motion_profile_status_btm_buffer_cnt
     (write-long (length _motion_profile_status_btm_buffer_cnt) s)
     (dotimes (i (length _motion_profile_status_btm_buffer_cnt))
       (write-long (elt _motion_profile_status_btm_buffer_cnt i) s)
       )
     ;; bool[] _motion_profile_status_has_underrun
     (write-long (length _motion_profile_status_has_underrun) s)
     (dotimes (i (length _motion_profile_status_has_underrun))
       (if (elt _motion_profile_status_has_underrun i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _motion_profile_status_is_underrun
     (write-long (length _motion_profile_status_is_underrun) s)
     (dotimes (i (length _motion_profile_status_is_underrun))
       (if (elt _motion_profile_status_is_underrun i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _motion_profile_status_active_point_valid
     (write-long (length _motion_profile_status_active_point_valid) s)
     (dotimes (i (length _motion_profile_status_active_point_valid))
       (if (elt _motion_profile_status_active_point_valid i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _motion_profile_status_is_last
     (write-long (length _motion_profile_status_is_last) s)
     (dotimes (i (length _motion_profile_status_is_last))
       (if (elt _motion_profile_status_is_last i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; int32[] _motion_profile_status_profile_slot_select0
     (write-long (length _motion_profile_status_profile_slot_select0) s)
     (dotimes (i (length _motion_profile_status_profile_slot_select0))
       (write-long (elt _motion_profile_status_profile_slot_select0 i) s)
       )
     ;; int32[] _motion_profile_status_profile_slot_select1
     (write-long (length _motion_profile_status_profile_slot_select1) s)
     (dotimes (i (length _motion_profile_status_profile_slot_select1))
       (write-long (elt _motion_profile_status_profile_slot_select1 i) s)
       )
     ;; string[] _motion_profile_status_output_enable
     (write-long (length _motion_profile_status_output_enable) s)
     (dolist (elem _motion_profile_status_output_enable)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int32[] _motion_profile_time_dur_ms
     (write-long (length _motion_profile_time_dur_ms) s)
     (dotimes (i (length _motion_profile_time_dur_ms))
       (write-long (elt _motion_profile_time_dur_ms i) s)
       )
     ;; string[] _faults
     (write-long (length _faults) s)
     (dolist (elem _faults)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _sticky_faults
     (write-long (length _sticky_faults) s)
     (dolist (elem _sticky_faults)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _conversion_factor
     (write-long (length _conversion_factor) s)
     (dotimes (i (length _conversion_factor))
       (sys::poke (elt _conversion_factor i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; talon_state_msgs/CustomProfileStatus[] _custom_profile_status
     (write-long (length _custom_profile_status) s)
     (dolist (elem _custom_profile_status)
       (send elem :serialize s)
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
   ;; string[] _talon_mode
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _talon_mode (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _talon_mode i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _demand1_type
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _demand1_type (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _demand1_type i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _demand1_value
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _demand1_value (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _demand1_value i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _speed
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _speed (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _speed i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _output_voltage
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _output_voltage (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _output_voltage i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _output_current
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _output_current (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _output_current i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _bus_voltage
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bus_voltage (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _bus_voltage i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _motor_output_percent
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor_output_percent (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _motor_output_percent i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _temperature
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _temperature (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _temperature i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _set_point
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _set_point (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _set_point i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _closed_loop_error
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _closed_loop_error (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _closed_loop_error i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _integral_accumulator
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _integral_accumulator (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _integral_accumulator i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _error_derivative
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _error_derivative (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _error_derivative i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _closed_loop_target
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _closed_loop_target (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _closed_loop_target i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _p_term
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _p_term (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _p_term i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _i_term
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _i_term (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _i_term i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _d_term
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _d_term (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _d_term i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _f_term
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _f_term (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _f_term i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _active_trajectory_position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _active_trajectory_position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _active_trajectory_position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _active_trajectory_velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _active_trajectory_velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _active_trajectory_velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _active_trajectory_arbitrary_feed_forward
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _active_trajectory_arbitrary_feed_forward (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _active_trajectory_arbitrary_feed_forward i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _active_trajectory_heading
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _active_trajectory_heading (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _active_trajectory_heading i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; bool[] _forward_limit_switch
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _forward_limit_switch (make-list n))
     (dotimes (i n)
     (setf (elt _forward_limit_switch i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _reverse_limit_switch
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reverse_limit_switch (make-list n))
     (dotimes (i n)
     (setf (elt _reverse_limit_switch i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _forward_softlimit
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _forward_softlimit (make-list n))
     (dotimes (i n)
     (setf (elt _forward_softlimit i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _reverse_softlimit
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reverse_softlimit (make-list n))
     (dotimes (i n)
     (setf (elt _reverse_softlimit i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _neutral_output
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _neutral_output (make-list n))
     (dotimes (i n)
     (setf (elt _neutral_output i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; int32[] _motion_profile_top_level_buffer_count
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motion_profile_top_level_buffer_count (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motion_profile_top_level_buffer_count i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; bool[] _motion_profile_top_level_buffer_full
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motion_profile_top_level_buffer_full (make-list n))
     (dotimes (i n)
     (setf (elt _motion_profile_top_level_buffer_full i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; int32[] _motion_profile_status_top_buffer_rem
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motion_profile_status_top_buffer_rem (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motion_profile_status_top_buffer_rem i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _motion_profile_status_top_buffer_cnt
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motion_profile_status_top_buffer_cnt (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motion_profile_status_top_buffer_cnt i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _motion_profile_status_btm_buffer_cnt
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motion_profile_status_btm_buffer_cnt (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motion_profile_status_btm_buffer_cnt i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; bool[] _motion_profile_status_has_underrun
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motion_profile_status_has_underrun (make-list n))
     (dotimes (i n)
     (setf (elt _motion_profile_status_has_underrun i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _motion_profile_status_is_underrun
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motion_profile_status_is_underrun (make-list n))
     (dotimes (i n)
     (setf (elt _motion_profile_status_is_underrun i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _motion_profile_status_active_point_valid
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motion_profile_status_active_point_valid (make-list n))
     (dotimes (i n)
     (setf (elt _motion_profile_status_active_point_valid i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _motion_profile_status_is_last
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motion_profile_status_is_last (make-list n))
     (dotimes (i n)
     (setf (elt _motion_profile_status_is_last i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; int32[] _motion_profile_status_profile_slot_select0
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motion_profile_status_profile_slot_select0 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motion_profile_status_profile_slot_select0 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _motion_profile_status_profile_slot_select1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motion_profile_status_profile_slot_select1 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motion_profile_status_profile_slot_select1 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string[] _motion_profile_status_output_enable
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motion_profile_status_output_enable (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _motion_profile_status_output_enable i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int32[] _motion_profile_time_dur_ms
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motion_profile_time_dur_ms (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _motion_profile_time_dur_ms i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string[] _faults
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _faults (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _faults i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _sticky_faults
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sticky_faults (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _sticky_faults i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _conversion_factor
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _conversion_factor (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _conversion_factor i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; talon_state_msgs/CustomProfileStatus[] _custom_profile_status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _custom_profile_status (let (r) (dotimes (i n) (push (instance talon_state_msgs::CustomProfileStatus :init) r)) r))
     (dolist (elem- _custom_profile_status)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get talon_state_msgs::TalonState :md5sum-) "3c4ea359830a4aa13b177949e57ebce3")
(setf (get talon_state_msgs::TalonState :datatype-) "talon_state_msgs/TalonState")
(setf (get talon_state_msgs::TalonState :definition-)
      "Header header

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

")



(provide :talon_state_msgs/TalonState "3c4ea359830a4aa13b177949e57ebce3")


