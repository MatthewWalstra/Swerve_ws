; Auto-generated. Do not edit!


(cl:in-package talon_swerve_drive_controller-srv)


;//! \htmlinclude SetXY-request.msg.html

(cl:defclass <SetXY-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetXY-request (<SetXY-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetXY-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetXY-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name talon_swerve_drive_controller-srv:<SetXY-request> is deprecated: use talon_swerve_drive_controller-srv:SetXY-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <SetXY-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talon_swerve_drive_controller-srv:x-val is deprecated.  Use talon_swerve_drive_controller-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <SetXY-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader talon_swerve_drive_controller-srv:y-val is deprecated.  Use talon_swerve_drive_controller-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetXY-request>) ostream)
  "Serializes a message object of type '<SetXY-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetXY-request>) istream)
  "Deserializes a message object of type '<SetXY-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetXY-request>)))
  "Returns string type for a service object of type '<SetXY-request>"
  "talon_swerve_drive_controller/SetXYRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetXY-request)))
  "Returns string type for a service object of type 'SetXY-request"
  "talon_swerve_drive_controller/SetXYRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetXY-request>)))
  "Returns md5sum for a message object of type '<SetXY-request>"
  "209f516d3eb691f0663e25cb750d67c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetXY-request)))
  "Returns md5sum for a message object of type 'SetXY-request"
  "209f516d3eb691f0663e25cb750d67c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetXY-request>)))
  "Returns full string definition for message of type '<SetXY-request>"
  (cl:format cl:nil "float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetXY-request)))
  "Returns full string definition for message of type 'SetXY-request"
  (cl:format cl:nil "float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetXY-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetXY-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetXY-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude SetXY-response.msg.html

(cl:defclass <SetXY-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetXY-response (<SetXY-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetXY-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetXY-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name talon_swerve_drive_controller-srv:<SetXY-response> is deprecated: use talon_swerve_drive_controller-srv:SetXY-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetXY-response>) ostream)
  "Serializes a message object of type '<SetXY-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetXY-response>) istream)
  "Deserializes a message object of type '<SetXY-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetXY-response>)))
  "Returns string type for a service object of type '<SetXY-response>"
  "talon_swerve_drive_controller/SetXYResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetXY-response)))
  "Returns string type for a service object of type 'SetXY-response"
  "talon_swerve_drive_controller/SetXYResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetXY-response>)))
  "Returns md5sum for a message object of type '<SetXY-response>"
  "209f516d3eb691f0663e25cb750d67c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetXY-response)))
  "Returns md5sum for a message object of type 'SetXY-response"
  "209f516d3eb691f0663e25cb750d67c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetXY-response>)))
  "Returns full string definition for message of type '<SetXY-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetXY-response)))
  "Returns full string definition for message of type 'SetXY-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetXY-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetXY-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetXY-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetXY)))
  'SetXY-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetXY)))
  'SetXY-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetXY)))
  "Returns string type for a service object of type '<SetXY>"
  "talon_swerve_drive_controller/SetXY")