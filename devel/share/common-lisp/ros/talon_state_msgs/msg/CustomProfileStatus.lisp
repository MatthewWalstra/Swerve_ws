; Auto-generated. Do not edit!


(cl:in-package talon_state_msgs-msg)


;//! \htmlinclude CustomProfileStatus.msg.html

(cl:defclass <CustomProfileStatus> (roslisp-msg-protocol:ros-message)
  ((running
    :reader running
    :initarg :running
    :type cl:boolean
    :initform cl:nil)
   (slotRunning
    :reader slotRunning
    :initarg :slotRunning
    :type cl:integer
    :initform 0)
   (remainingPoints
    :reader remainingPoints
    :initarg :remainingPoints
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (remainingTime
    :reader remainingTime
    :initarg :remainingTime
    :type cl:float
    :initform 0.0)
   (outOfPoints
    :reader outOfPoints
    :initarg :outOfPoints
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CustomProfileStatus (<CustomProfileStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomProfileStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomProfileStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name talon_state_msgs-msg:<CustomProfileStatus> is deprecated: use talon_state_msgs-msg:CustomProfileStatus instead.")))

(cl:ensure-generic-function 'running-val :lambda-list '(m))
(cl:defmethod running-val ((m <CustomProfileStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talon_state_msgs-msg:running-val is deprecated.  Use talon_state_msgs-msg:running instead.")
  (running m))

(cl:ensure-generic-function 'slotRunning-val :lambda-list '(m))
(cl:defmethod slotRunning-val ((m <CustomProfileStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talon_state_msgs-msg:slotRunning-val is deprecated.  Use talon_state_msgs-msg:slotRunning instead.")
  (slotRunning m))

(cl:ensure-generic-function 'remainingPoints-val :lambda-list '(m))
(cl:defmethod remainingPoints-val ((m <CustomProfileStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talon_state_msgs-msg:remainingPoints-val is deprecated.  Use talon_state_msgs-msg:remainingPoints instead.")
  (remainingPoints m))

(cl:ensure-generic-function 'remainingTime-val :lambda-list '(m))
(cl:defmethod remainingTime-val ((m <CustomProfileStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talon_state_msgs-msg:remainingTime-val is deprecated.  Use talon_state_msgs-msg:remainingTime instead.")
  (remainingTime m))

(cl:ensure-generic-function 'outOfPoints-val :lambda-list '(m))
(cl:defmethod outOfPoints-val ((m <CustomProfileStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talon_state_msgs-msg:outOfPoints-val is deprecated.  Use talon_state_msgs-msg:outOfPoints instead.")
  (outOfPoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomProfileStatus>) ostream)
  "Serializes a message object of type '<CustomProfileStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'running) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'slotRunning)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'remainingPoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'remainingPoints))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'remainingTime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'outOfPoints) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomProfileStatus>) istream)
  "Deserializes a message object of type '<CustomProfileStatus>"
    (cl:setf (cl:slot-value msg 'running) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'slotRunning) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'remainingPoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'remainingPoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'remainingTime) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'outOfPoints) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomProfileStatus>)))
  "Returns string type for a message object of type '<CustomProfileStatus>"
  "talon_state_msgs/CustomProfileStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomProfileStatus)))
  "Returns string type for a message object of type 'CustomProfileStatus"
  "talon_state_msgs/CustomProfileStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomProfileStatus>)))
  "Returns md5sum for a message object of type '<CustomProfileStatus>"
  "88d6d29a2f14590c2629fee009ce5b24")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomProfileStatus)))
  "Returns md5sum for a message object of type 'CustomProfileStatus"
  "88d6d29a2f14590c2629fee009ce5b24")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomProfileStatus>)))
  "Returns full string definition for message of type '<CustomProfileStatus>"
  (cl:format cl:nil "bool running~%int32 slotRunning~%int32[] remainingPoints~%float64 remainingTime~%bool outOfPoints~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomProfileStatus)))
  "Returns full string definition for message of type 'CustomProfileStatus"
  (cl:format cl:nil "bool running~%int32 slotRunning~%int32[] remainingPoints~%float64 remainingTime~%bool outOfPoints~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomProfileStatus>))
  (cl:+ 0
     1
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'remainingPoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomProfileStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomProfileStatus
    (cl:cons ':running (running msg))
    (cl:cons ':slotRunning (slotRunning msg))
    (cl:cons ':remainingPoints (remainingPoints msg))
    (cl:cons ':remainingTime (remainingTime msg))
    (cl:cons ':outOfPoints (outOfPoints msg))
))
