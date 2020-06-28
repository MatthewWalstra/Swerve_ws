; Auto-generated. Do not edit!


(cl:in-package ros_control_boilerplate-srv)


;//! \htmlinclude set_limit_switch-request.msg.html

(cl:defclass <set_limit_switch-request> (roslisp-msg-protocol:ros-message)
  ((target_joint_id
    :reader target_joint_id
    :initarg :target_joint_id
    :type cl:fixnum
    :initform 0)
   (target_joint_name
    :reader target_joint_name
    :initarg :target_joint_name
    :type cl:string
    :initform "")
   (forward
    :reader forward
    :initarg :forward
    :type cl:boolean
    :initform cl:nil)
   (reverse
    :reader reverse
    :initarg :reverse
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_limit_switch-request (<set_limit_switch-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_limit_switch-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_limit_switch-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_control_boilerplate-srv:<set_limit_switch-request> is deprecated: use ros_control_boilerplate-srv:set_limit_switch-request instead.")))

(cl:ensure-generic-function 'target_joint_id-val :lambda-list '(m))
(cl:defmethod target_joint_id-val ((m <set_limit_switch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_control_boilerplate-srv:target_joint_id-val is deprecated.  Use ros_control_boilerplate-srv:target_joint_id instead.")
  (target_joint_id m))

(cl:ensure-generic-function 'target_joint_name-val :lambda-list '(m))
(cl:defmethod target_joint_name-val ((m <set_limit_switch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_control_boilerplate-srv:target_joint_name-val is deprecated.  Use ros_control_boilerplate-srv:target_joint_name instead.")
  (target_joint_name m))

(cl:ensure-generic-function 'forward-val :lambda-list '(m))
(cl:defmethod forward-val ((m <set_limit_switch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_control_boilerplate-srv:forward-val is deprecated.  Use ros_control_boilerplate-srv:forward instead.")
  (forward m))

(cl:ensure-generic-function 'reverse-val :lambda-list '(m))
(cl:defmethod reverse-val ((m <set_limit_switch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_control_boilerplate-srv:reverse-val is deprecated.  Use ros_control_boilerplate-srv:reverse instead.")
  (reverse m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_limit_switch-request>) ostream)
  "Serializes a message object of type '<set_limit_switch-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_joint_id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_joint_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_joint_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'forward) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reverse) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_limit_switch-request>) istream)
  "Deserializes a message object of type '<set_limit_switch-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_joint_id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_joint_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_joint_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'forward) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reverse) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_limit_switch-request>)))
  "Returns string type for a service object of type '<set_limit_switch-request>"
  "ros_control_boilerplate/set_limit_switchRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_limit_switch-request)))
  "Returns string type for a service object of type 'set_limit_switch-request"
  "ros_control_boilerplate/set_limit_switchRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_limit_switch-request>)))
  "Returns md5sum for a message object of type '<set_limit_switch-request>"
  "aea7656fc087d7bb28bae4c37dc4edcd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_limit_switch-request)))
  "Returns md5sum for a message object of type 'set_limit_switch-request"
  "aea7656fc087d7bb28bae4c37dc4edcd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_limit_switch-request>)))
  "Returns full string definition for message of type '<set_limit_switch-request>"
  (cl:format cl:nil "uint8 target_joint_id~%string target_joint_name~%bool forward~%bool reverse~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_limit_switch-request)))
  "Returns full string definition for message of type 'set_limit_switch-request"
  (cl:format cl:nil "uint8 target_joint_id~%string target_joint_name~%bool forward~%bool reverse~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_limit_switch-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'target_joint_name))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_limit_switch-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_limit_switch-request
    (cl:cons ':target_joint_id (target_joint_id msg))
    (cl:cons ':target_joint_name (target_joint_name msg))
    (cl:cons ':forward (forward msg))
    (cl:cons ':reverse (reverse msg))
))
;//! \htmlinclude set_limit_switch-response.msg.html

(cl:defclass <set_limit_switch-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass set_limit_switch-response (<set_limit_switch-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_limit_switch-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_limit_switch-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_control_boilerplate-srv:<set_limit_switch-response> is deprecated: use ros_control_boilerplate-srv:set_limit_switch-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_limit_switch-response>) ostream)
  "Serializes a message object of type '<set_limit_switch-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_limit_switch-response>) istream)
  "Deserializes a message object of type '<set_limit_switch-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_limit_switch-response>)))
  "Returns string type for a service object of type '<set_limit_switch-response>"
  "ros_control_boilerplate/set_limit_switchResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_limit_switch-response)))
  "Returns string type for a service object of type 'set_limit_switch-response"
  "ros_control_boilerplate/set_limit_switchResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_limit_switch-response>)))
  "Returns md5sum for a message object of type '<set_limit_switch-response>"
  "aea7656fc087d7bb28bae4c37dc4edcd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_limit_switch-response)))
  "Returns md5sum for a message object of type 'set_limit_switch-response"
  "aea7656fc087d7bb28bae4c37dc4edcd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_limit_switch-response>)))
  "Returns full string definition for message of type '<set_limit_switch-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_limit_switch-response)))
  "Returns full string definition for message of type 'set_limit_switch-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_limit_switch-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_limit_switch-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_limit_switch-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_limit_switch)))
  'set_limit_switch-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_limit_switch)))
  'set_limit_switch-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_limit_switch)))
  "Returns string type for a service object of type '<set_limit_switch>"
  "ros_control_boilerplate/set_limit_switch")