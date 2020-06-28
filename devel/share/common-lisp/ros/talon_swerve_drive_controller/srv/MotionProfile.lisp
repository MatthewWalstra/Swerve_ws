; Auto-generated. Do not edit!


(cl:in-package talon_swerve_drive_controller-srv)


;//! \htmlinclude MotionProfile-request.msg.html

(cl:defclass <MotionProfile-request> (roslisp-msg-protocol:ros-message)
  ((joint_trajectory
    :reader joint_trajectory
    :initarg :joint_trajectory
    :type trajectory_msgs-msg:JointTrajectory
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectory))
   (hold
    :reader hold
    :initarg :hold
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (dt
    :reader dt
    :initarg :dt
    :type cl:float
    :initform 0.0)
   (slot
    :reader slot
    :initarg :slot
    :type cl:integer
    :initform 0)
   (wipe_all
    :reader wipe_all
    :initarg :wipe_all
    :type cl:boolean
    :initform cl:nil)
   (buffer
    :reader buffer
    :initarg :buffer
    :type cl:boolean
    :initform cl:nil)
   (run
    :reader run
    :initarg :run
    :type cl:boolean
    :initform cl:nil)
   (brake
    :reader brake
    :initarg :brake
    :type cl:boolean
    :initform cl:nil)
   (mode
    :reader mode
    :initarg :mode
    :type cl:boolean
    :initform cl:nil)
   (run_slot
    :reader run_slot
    :initarg :run_slot
    :type cl:fixnum
    :initform 0)
   (change_queue
    :reader change_queue
    :initarg :change_queue
    :type cl:boolean
    :initform cl:nil)
   (new_queue
    :reader new_queue
    :initarg :new_queue
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass MotionProfile-request (<MotionProfile-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotionProfile-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotionProfile-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name talon_swerve_drive_controller-srv:<MotionProfile-request> is deprecated: use talon_swerve_drive_controller-srv:MotionProfile-request instead.")))

(cl:ensure-generic-function 'joint_trajectory-val :lambda-list '(m))
(cl:defmethod joint_trajectory-val ((m <MotionProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talon_swerve_drive_controller-srv:joint_trajectory-val is deprecated.  Use talon_swerve_drive_controller-srv:joint_trajectory instead.")
  (joint_trajectory m))

(cl:ensure-generic-function 'hold-val :lambda-list '(m))
(cl:defmethod hold-val ((m <MotionProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talon_swerve_drive_controller-srv:hold-val is deprecated.  Use talon_swerve_drive_controller-srv:hold instead.")
  (hold m))

(cl:ensure-generic-function 'dt-val :lambda-list '(m))
(cl:defmethod dt-val ((m <MotionProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talon_swerve_drive_controller-srv:dt-val is deprecated.  Use talon_swerve_drive_controller-srv:dt instead.")
  (dt m))

(cl:ensure-generic-function 'slot-val :lambda-list '(m))
(cl:defmethod slot-val ((m <MotionProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talon_swerve_drive_controller-srv:slot-val is deprecated.  Use talon_swerve_drive_controller-srv:slot instead.")
  (slot m))

(cl:ensure-generic-function 'wipe_all-val :lambda-list '(m))
(cl:defmethod wipe_all-val ((m <MotionProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talon_swerve_drive_controller-srv:wipe_all-val is deprecated.  Use talon_swerve_drive_controller-srv:wipe_all instead.")
  (wipe_all m))

(cl:ensure-generic-function 'buffer-val :lambda-list '(m))
(cl:defmethod buffer-val ((m <MotionProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talon_swerve_drive_controller-srv:buffer-val is deprecated.  Use talon_swerve_drive_controller-srv:buffer instead.")
  (buffer m))

(cl:ensure-generic-function 'run-val :lambda-list '(m))
(cl:defmethod run-val ((m <MotionProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talon_swerve_drive_controller-srv:run-val is deprecated.  Use talon_swerve_drive_controller-srv:run instead.")
  (run m))

(cl:ensure-generic-function 'brake-val :lambda-list '(m))
(cl:defmethod brake-val ((m <MotionProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talon_swerve_drive_controller-srv:brake-val is deprecated.  Use talon_swerve_drive_controller-srv:brake instead.")
  (brake m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <MotionProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talon_swerve_drive_controller-srv:mode-val is deprecated.  Use talon_swerve_drive_controller-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'run_slot-val :lambda-list '(m))
(cl:defmethod run_slot-val ((m <MotionProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talon_swerve_drive_controller-srv:run_slot-val is deprecated.  Use talon_swerve_drive_controller-srv:run_slot instead.")
  (run_slot m))

(cl:ensure-generic-function 'change_queue-val :lambda-list '(m))
(cl:defmethod change_queue-val ((m <MotionProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talon_swerve_drive_controller-srv:change_queue-val is deprecated.  Use talon_swerve_drive_controller-srv:change_queue instead.")
  (change_queue m))

(cl:ensure-generic-function 'new_queue-val :lambda-list '(m))
(cl:defmethod new_queue-val ((m <MotionProfile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talon_swerve_drive_controller-srv:new_queue-val is deprecated.  Use talon_swerve_drive_controller-srv:new_queue instead.")
  (new_queue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotionProfile-request>) ostream)
  "Serializes a message object of type '<MotionProfile-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joint_trajectory) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'hold))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'hold))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'slot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'slot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'slot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'slot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wipe_all) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'buffer) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'run) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'brake) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'run_slot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'change_queue) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'new_queue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'new_queue))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotionProfile-request>) istream)
  "Deserializes a message object of type '<MotionProfile-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joint_trajectory) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'hold) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'hold)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dt) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'slot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'slot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'slot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'slot)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wipe_all) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'buffer) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'run) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'brake) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'run_slot)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'change_queue) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'new_queue) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'new_queue)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotionProfile-request>)))
  "Returns string type for a service object of type '<MotionProfile-request>"
  "talon_swerve_drive_controller/MotionProfileRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotionProfile-request)))
  "Returns string type for a service object of type 'MotionProfile-request"
  "talon_swerve_drive_controller/MotionProfileRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotionProfile-request>)))
  "Returns md5sum for a message object of type '<MotionProfile-request>"
  "823f7df5a442d751c5c3d88388259334")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotionProfile-request)))
  "Returns md5sum for a message object of type 'MotionProfile-request"
  "823f7df5a442d751c5c3d88388259334")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotionProfile-request>)))
  "Returns full string definition for message of type '<MotionProfile-request>"
  (cl:format cl:nil "trajectory_msgs/JointTrajectory joint_trajectory~%bool[]  hold~%float64 dt~%uint32  slot~%bool    wipe_all~%bool    buffer~%bool    run~%bool    brake~%bool    mode~%uint8   run_slot~%bool    change_queue~%uint8[] new_queue~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotionProfile-request)))
  "Returns full string definition for message of type 'MotionProfile-request"
  (cl:format cl:nil "trajectory_msgs/JointTrajectory joint_trajectory~%bool[]  hold~%float64 dt~%uint32  slot~%bool    wipe_all~%bool    buffer~%bool    run~%bool    brake~%bool    mode~%uint8   run_slot~%bool    change_queue~%uint8[] new_queue~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotionProfile-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joint_trajectory))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'hold) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     8
     4
     1
     1
     1
     1
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'new_queue) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotionProfile-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MotionProfile-request
    (cl:cons ':joint_trajectory (joint_trajectory msg))
    (cl:cons ':hold (hold msg))
    (cl:cons ':dt (dt msg))
    (cl:cons ':slot (slot msg))
    (cl:cons ':wipe_all (wipe_all msg))
    (cl:cons ':buffer (buffer msg))
    (cl:cons ':run (run msg))
    (cl:cons ':brake (brake msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':run_slot (run_slot msg))
    (cl:cons ':change_queue (change_queue msg))
    (cl:cons ':new_queue (new_queue msg))
))
;//! \htmlinclude MotionProfile-response.msg.html

(cl:defclass <MotionProfile-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MotionProfile-response (<MotionProfile-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotionProfile-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotionProfile-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name talon_swerve_drive_controller-srv:<MotionProfile-response> is deprecated: use talon_swerve_drive_controller-srv:MotionProfile-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotionProfile-response>) ostream)
  "Serializes a message object of type '<MotionProfile-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotionProfile-response>) istream)
  "Deserializes a message object of type '<MotionProfile-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotionProfile-response>)))
  "Returns string type for a service object of type '<MotionProfile-response>"
  "talon_swerve_drive_controller/MotionProfileResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotionProfile-response)))
  "Returns string type for a service object of type 'MotionProfile-response"
  "talon_swerve_drive_controller/MotionProfileResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotionProfile-response>)))
  "Returns md5sum for a message object of type '<MotionProfile-response>"
  "823f7df5a442d751c5c3d88388259334")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotionProfile-response)))
  "Returns md5sum for a message object of type 'MotionProfile-response"
  "823f7df5a442d751c5c3d88388259334")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotionProfile-response>)))
  "Returns full string definition for message of type '<MotionProfile-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotionProfile-response)))
  "Returns full string definition for message of type 'MotionProfile-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotionProfile-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotionProfile-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MotionProfile-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MotionProfile)))
  'MotionProfile-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MotionProfile)))
  'MotionProfile-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotionProfile)))
  "Returns string type for a service object of type '<MotionProfile>"
  "talon_swerve_drive_controller/MotionProfile")