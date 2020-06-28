; Auto-generated. Do not edit!


(cl:in-package base_trajectory-srv)


;//! \htmlinclude GenerateSpline-request.msg.html

(cl:defclass <GenerateSpline-request> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector trajectory_msgs-msg:JointTrajectoryPoint)
   :initform (cl:make-array 0 :element-type 'trajectory_msgs-msg:JointTrajectoryPoint :initial-element (cl:make-instance 'trajectory_msgs-msg:JointTrajectoryPoint))))
)

(cl:defclass GenerateSpline-request (<GenerateSpline-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenerateSpline-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenerateSpline-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name base_trajectory-srv:<GenerateSpline-request> is deprecated: use base_trajectory-srv:GenerateSpline-request instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <GenerateSpline-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_trajectory-srv:points-val is deprecated.  Use base_trajectory-srv:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenerateSpline-request>) ostream)
  "Serializes a message object of type '<GenerateSpline-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenerateSpline-request>) istream)
  "Deserializes a message object of type '<GenerateSpline-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'trajectory_msgs-msg:JointTrajectoryPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenerateSpline-request>)))
  "Returns string type for a service object of type '<GenerateSpline-request>"
  "base_trajectory/GenerateSplineRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateSpline-request)))
  "Returns string type for a service object of type 'GenerateSpline-request"
  "base_trajectory/GenerateSplineRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenerateSpline-request>)))
  "Returns md5sum for a message object of type '<GenerateSpline-request>"
  "2e897a151cd8c4aa6aeb509b833d8007")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenerateSpline-request)))
  "Returns md5sum for a message object of type 'GenerateSpline-request"
  "2e897a151cd8c4aa6aeb509b833d8007")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenerateSpline-request>)))
  "Returns full string definition for message of type '<GenerateSpline-request>"
  (cl:format cl:nil "trajectory_msgs/JointTrajectoryPoint[] points~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenerateSpline-request)))
  "Returns full string definition for message of type 'GenerateSpline-request"
  (cl:format cl:nil "trajectory_msgs/JointTrajectoryPoint[] points~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenerateSpline-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenerateSpline-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GenerateSpline-request
    (cl:cons ':points (points msg))
))
;//! \htmlinclude GenerateSpline-response.msg.html

(cl:defclass <GenerateSpline-response> (roslisp-msg-protocol:ros-message)
  ((orient_coefs
    :reader orient_coefs
    :initarg :orient_coefs
    :type (cl:vector base_trajectory-msg:Coefs)
   :initform (cl:make-array 0 :element-type 'base_trajectory-msg:Coefs :initial-element (cl:make-instance 'base_trajectory-msg:Coefs)))
   (x_coefs
    :reader x_coefs
    :initarg :x_coefs
    :type (cl:vector base_trajectory-msg:Coefs)
   :initform (cl:make-array 0 :element-type 'base_trajectory-msg:Coefs :initial-element (cl:make-instance 'base_trajectory-msg:Coefs)))
   (y_coefs
    :reader y_coefs
    :initarg :y_coefs
    :type (cl:vector base_trajectory-msg:Coefs)
   :initform (cl:make-array 0 :element-type 'base_trajectory-msg:Coefs :initial-element (cl:make-instance 'base_trajectory-msg:Coefs)))
   (end_points
    :reader end_points
    :initarg :end_points
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (path
    :reader path
    :initarg :path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path)))
)

(cl:defclass GenerateSpline-response (<GenerateSpline-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenerateSpline-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenerateSpline-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name base_trajectory-srv:<GenerateSpline-response> is deprecated: use base_trajectory-srv:GenerateSpline-response instead.")))

(cl:ensure-generic-function 'orient_coefs-val :lambda-list '(m))
(cl:defmethod orient_coefs-val ((m <GenerateSpline-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_trajectory-srv:orient_coefs-val is deprecated.  Use base_trajectory-srv:orient_coefs instead.")
  (orient_coefs m))

(cl:ensure-generic-function 'x_coefs-val :lambda-list '(m))
(cl:defmethod x_coefs-val ((m <GenerateSpline-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_trajectory-srv:x_coefs-val is deprecated.  Use base_trajectory-srv:x_coefs instead.")
  (x_coefs m))

(cl:ensure-generic-function 'y_coefs-val :lambda-list '(m))
(cl:defmethod y_coefs-val ((m <GenerateSpline-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_trajectory-srv:y_coefs-val is deprecated.  Use base_trajectory-srv:y_coefs instead.")
  (y_coefs m))

(cl:ensure-generic-function 'end_points-val :lambda-list '(m))
(cl:defmethod end_points-val ((m <GenerateSpline-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_trajectory-srv:end_points-val is deprecated.  Use base_trajectory-srv:end_points instead.")
  (end_points m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <GenerateSpline-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_trajectory-srv:path-val is deprecated.  Use base_trajectory-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenerateSpline-response>) ostream)
  "Serializes a message object of type '<GenerateSpline-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'orient_coefs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'orient_coefs))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'x_coefs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'x_coefs))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'y_coefs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'y_coefs))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'end_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'end_points))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenerateSpline-response>) istream)
  "Deserializes a message object of type '<GenerateSpline-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'orient_coefs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'orient_coefs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'base_trajectory-msg:Coefs))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'x_coefs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'x_coefs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'base_trajectory-msg:Coefs))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'y_coefs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'y_coefs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'base_trajectory-msg:Coefs))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'end_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'end_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenerateSpline-response>)))
  "Returns string type for a service object of type '<GenerateSpline-response>"
  "base_trajectory/GenerateSplineResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateSpline-response)))
  "Returns string type for a service object of type 'GenerateSpline-response"
  "base_trajectory/GenerateSplineResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenerateSpline-response>)))
  "Returns md5sum for a message object of type '<GenerateSpline-response>"
  "2e897a151cd8c4aa6aeb509b833d8007")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenerateSpline-response)))
  "Returns md5sum for a message object of type 'GenerateSpline-response"
  "2e897a151cd8c4aa6aeb509b833d8007")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenerateSpline-response>)))
  "Returns full string definition for message of type '<GenerateSpline-response>"
  (cl:format cl:nil "Coefs[] orient_coefs~%Coefs[] x_coefs~%Coefs[] y_coefs~%float64[] end_points~%nav_msgs/Path path~%~%~%================================================================================~%MSG: base_trajectory/Coefs~%float64[] spline~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenerateSpline-response)))
  "Returns full string definition for message of type 'GenerateSpline-response"
  (cl:format cl:nil "Coefs[] orient_coefs~%Coefs[] x_coefs~%Coefs[] y_coefs~%float64[] end_points~%nav_msgs/Path path~%~%~%================================================================================~%MSG: base_trajectory/Coefs~%float64[] spline~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenerateSpline-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'orient_coefs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'x_coefs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'y_coefs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'end_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenerateSpline-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GenerateSpline-response
    (cl:cons ':orient_coefs (orient_coefs msg))
    (cl:cons ':x_coefs (x_coefs msg))
    (cl:cons ':y_coefs (y_coefs msg))
    (cl:cons ':end_points (end_points msg))
    (cl:cons ':path (path msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GenerateSpline)))
  'GenerateSpline-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GenerateSpline)))
  'GenerateSpline-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateSpline)))
  "Returns string type for a service object of type '<GenerateSpline>"
  "base_trajectory/GenerateSpline")