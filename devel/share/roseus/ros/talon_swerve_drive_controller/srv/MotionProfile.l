;; Auto-generated. Do not edit!


(when (boundp 'talon_swerve_drive_controller::MotionProfile)
  (if (not (find-package "TALON_SWERVE_DRIVE_CONTROLLER"))
    (make-package "TALON_SWERVE_DRIVE_CONTROLLER"))
  (shadow 'MotionProfile (find-package "TALON_SWERVE_DRIVE_CONTROLLER")))
(unless (find-package "TALON_SWERVE_DRIVE_CONTROLLER::MOTIONPROFILE")
  (make-package "TALON_SWERVE_DRIVE_CONTROLLER::MOTIONPROFILE"))
(unless (find-package "TALON_SWERVE_DRIVE_CONTROLLER::MOTIONPROFILEREQUEST")
  (make-package "TALON_SWERVE_DRIVE_CONTROLLER::MOTIONPROFILEREQUEST"))
(unless (find-package "TALON_SWERVE_DRIVE_CONTROLLER::MOTIONPROFILERESPONSE")
  (make-package "TALON_SWERVE_DRIVE_CONTROLLER::MOTIONPROFILERESPONSE"))

(in-package "ROS")

(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))




(defclass talon_swerve_drive_controller::MotionProfileRequest
  :super ros::object
  :slots (_joint_trajectory _hold _dt _slot _wipe_all _buffer _run _brake _mode _run_slot _change_queue _new_queue ))

(defmethod talon_swerve_drive_controller::MotionProfileRequest
  (:init
   (&key
    ((:joint_trajectory __joint_trajectory) (instance trajectory_msgs::JointTrajectory :init))
    ((:hold __hold) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:dt __dt) 0.0)
    ((:slot __slot) 0)
    ((:wipe_all __wipe_all) nil)
    ((:buffer __buffer) nil)
    ((:run __run) nil)
    ((:brake __brake) nil)
    ((:mode __mode) nil)
    ((:run_slot __run_slot) 0)
    ((:change_queue __change_queue) nil)
    ((:new_queue __new_queue) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _joint_trajectory __joint_trajectory)
   (setq _hold __hold)
   (setq _dt (float __dt))
   (setq _slot (round __slot))
   (setq _wipe_all __wipe_all)
   (setq _buffer __buffer)
   (setq _run __run)
   (setq _brake __brake)
   (setq _mode __mode)
   (setq _run_slot (round __run_slot))
   (setq _change_queue __change_queue)
   (setq _new_queue __new_queue)
   self)
  (:joint_trajectory
   (&rest __joint_trajectory)
   (if (keywordp (car __joint_trajectory))
       (send* _joint_trajectory __joint_trajectory)
     (progn
       (if __joint_trajectory (setq _joint_trajectory (car __joint_trajectory)))
       _joint_trajectory)))
  (:hold
   (&optional __hold)
   (if __hold (setq _hold __hold)) _hold)
  (:dt
   (&optional __dt)
   (if __dt (setq _dt __dt)) _dt)
  (:slot
   (&optional __slot)
   (if __slot (setq _slot __slot)) _slot)
  (:wipe_all
   (&optional __wipe_all)
   (if __wipe_all (setq _wipe_all __wipe_all)) _wipe_all)
  (:buffer
   (&optional __buffer)
   (if __buffer (setq _buffer __buffer)) _buffer)
  (:run
   (&optional __run)
   (if __run (setq _run __run)) _run)
  (:brake
   (&optional __brake)
   (if __brake (setq _brake __brake)) _brake)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:run_slot
   (&optional __run_slot)
   (if __run_slot (setq _run_slot __run_slot)) _run_slot)
  (:change_queue
   (&optional __change_queue)
   (if __change_queue (setq _change_queue __change_queue)) _change_queue)
  (:new_queue
   (&optional __new_queue)
   (if __new_queue (setq _new_queue __new_queue)) _new_queue)
  (:serialization-length
   ()
   (+
    ;; trajectory_msgs/JointTrajectory _joint_trajectory
    (send _joint_trajectory :serialization-length)
    ;; bool[] _hold
    (* 1    (length _hold)) 4
    ;; float64 _dt
    8
    ;; uint32 _slot
    4
    ;; bool _wipe_all
    1
    ;; bool _buffer
    1
    ;; bool _run
    1
    ;; bool _brake
    1
    ;; bool _mode
    1
    ;; uint8 _run_slot
    1
    ;; bool _change_queue
    1
    ;; uint8[] _new_queue
    (* 1    (length _new_queue)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; trajectory_msgs/JointTrajectory _joint_trajectory
       (send _joint_trajectory :serialize s)
     ;; bool[] _hold
     (write-long (length _hold) s)
     (dotimes (i (length _hold))
       (if (elt _hold i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; float64 _dt
       (sys::poke _dt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _slot
       (write-long _slot s)
     ;; bool _wipe_all
       (if _wipe_all (write-byte -1 s) (write-byte 0 s))
     ;; bool _buffer
       (if _buffer (write-byte -1 s) (write-byte 0 s))
     ;; bool _run
       (if _run (write-byte -1 s) (write-byte 0 s))
     ;; bool _brake
       (if _brake (write-byte -1 s) (write-byte 0 s))
     ;; bool _mode
       (if _mode (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _run_slot
       (write-byte _run_slot s)
     ;; bool _change_queue
       (if _change_queue (write-byte -1 s) (write-byte 0 s))
     ;; uint8[] _new_queue
     (write-long (length _new_queue) s)
     (princ _new_queue s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; trajectory_msgs/JointTrajectory _joint_trajectory
     (send _joint_trajectory :deserialize buf ptr-) (incf ptr- (send _joint_trajectory :serialization-length))
   ;; bool[] _hold
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _hold (make-list n))
     (dotimes (i n)
     (setf (elt _hold i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; float64 _dt
     (setq _dt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _slot
     (setq _slot (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _wipe_all
     (setq _wipe_all (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _buffer
     (setq _buffer (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _run
     (setq _run (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _brake
     (setq _brake (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mode
     (setq _mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _run_slot
     (setq _run_slot (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _change_queue
     (setq _change_queue (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8[] _new_queue
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _new_queue (make-array n :element-type :char))
     (replace _new_queue buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(defclass talon_swerve_drive_controller::MotionProfileResponse
  :super ros::object
  :slots ())

(defmethod talon_swerve_drive_controller::MotionProfileResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass talon_swerve_drive_controller::MotionProfile
  :super ros::object
  :slots ())

(setf (get talon_swerve_drive_controller::MotionProfile :md5sum-) "823f7df5a442d751c5c3d88388259334")
(setf (get talon_swerve_drive_controller::MotionProfile :datatype-) "talon_swerve_drive_controller/MotionProfile")
(setf (get talon_swerve_drive_controller::MotionProfile :request) talon_swerve_drive_controller::MotionProfileRequest)
(setf (get talon_swerve_drive_controller::MotionProfile :response) talon_swerve_drive_controller::MotionProfileResponse)

(defmethod talon_swerve_drive_controller::MotionProfileRequest
  (:response () (instance talon_swerve_drive_controller::MotionProfileResponse :init)))

(setf (get talon_swerve_drive_controller::MotionProfileRequest :md5sum-) "823f7df5a442d751c5c3d88388259334")
(setf (get talon_swerve_drive_controller::MotionProfileRequest :datatype-) "talon_swerve_drive_controller/MotionProfileRequest")
(setf (get talon_swerve_drive_controller::MotionProfileRequest :definition-)
      "trajectory_msgs/JointTrajectory joint_trajectory
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
---

")

(setf (get talon_swerve_drive_controller::MotionProfileResponse :md5sum-) "823f7df5a442d751c5c3d88388259334")
(setf (get talon_swerve_drive_controller::MotionProfileResponse :datatype-) "talon_swerve_drive_controller/MotionProfileResponse")
(setf (get talon_swerve_drive_controller::MotionProfileResponse :definition-)
      "trajectory_msgs/JointTrajectory joint_trajectory
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
---

")



(provide :talon_swerve_drive_controller/MotionProfile "823f7df5a442d751c5c3d88388259334")


