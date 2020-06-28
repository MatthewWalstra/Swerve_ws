; Auto-generated. Do not edit!


(cl:in-package imu_zero-srv)


;//! \htmlinclude ImuZeroAngle-request.msg.html

(cl:defclass <ImuZeroAngle-request> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass ImuZeroAngle-request (<ImuZeroAngle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImuZeroAngle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImuZeroAngle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imu_zero-srv:<ImuZeroAngle-request> is deprecated: use imu_zero-srv:ImuZeroAngle-request instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <ImuZeroAngle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imu_zero-srv:angle-val is deprecated.  Use imu_zero-srv:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImuZeroAngle-request>) ostream)
  "Serializes a message object of type '<ImuZeroAngle-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImuZeroAngle-request>) istream)
  "Deserializes a message object of type '<ImuZeroAngle-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImuZeroAngle-request>)))
  "Returns string type for a service object of type '<ImuZeroAngle-request>"
  "imu_zero/ImuZeroAngleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImuZeroAngle-request)))
  "Returns string type for a service object of type 'ImuZeroAngle-request"
  "imu_zero/ImuZeroAngleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImuZeroAngle-request>)))
  "Returns md5sum for a message object of type '<ImuZeroAngle-request>"
  "4edb55038e2b888976a0c0c56935341c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImuZeroAngle-request)))
  "Returns md5sum for a message object of type 'ImuZeroAngle-request"
  "4edb55038e2b888976a0c0c56935341c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImuZeroAngle-request>)))
  "Returns full string definition for message of type '<ImuZeroAngle-request>"
  (cl:format cl:nil "float64 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImuZeroAngle-request)))
  "Returns full string definition for message of type 'ImuZeroAngle-request"
  (cl:format cl:nil "float64 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImuZeroAngle-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImuZeroAngle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ImuZeroAngle-request
    (cl:cons ':angle (angle msg))
))
;//! \htmlinclude ImuZeroAngle-response.msg.html

(cl:defclass <ImuZeroAngle-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ImuZeroAngle-response (<ImuZeroAngle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImuZeroAngle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImuZeroAngle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imu_zero-srv:<ImuZeroAngle-response> is deprecated: use imu_zero-srv:ImuZeroAngle-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImuZeroAngle-response>) ostream)
  "Serializes a message object of type '<ImuZeroAngle-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImuZeroAngle-response>) istream)
  "Deserializes a message object of type '<ImuZeroAngle-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImuZeroAngle-response>)))
  "Returns string type for a service object of type '<ImuZeroAngle-response>"
  "imu_zero/ImuZeroAngleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImuZeroAngle-response)))
  "Returns string type for a service object of type 'ImuZeroAngle-response"
  "imu_zero/ImuZeroAngleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImuZeroAngle-response>)))
  "Returns md5sum for a message object of type '<ImuZeroAngle-response>"
  "4edb55038e2b888976a0c0c56935341c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImuZeroAngle-response)))
  "Returns md5sum for a message object of type 'ImuZeroAngle-response"
  "4edb55038e2b888976a0c0c56935341c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImuZeroAngle-response>)))
  "Returns full string definition for message of type '<ImuZeroAngle-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImuZeroAngle-response)))
  "Returns full string definition for message of type 'ImuZeroAngle-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImuZeroAngle-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImuZeroAngle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ImuZeroAngle-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ImuZeroAngle)))
  'ImuZeroAngle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ImuZeroAngle)))
  'ImuZeroAngle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImuZeroAngle)))
  "Returns string type for a service object of type '<ImuZeroAngle>"
  "imu_zero/ImuZeroAngle")