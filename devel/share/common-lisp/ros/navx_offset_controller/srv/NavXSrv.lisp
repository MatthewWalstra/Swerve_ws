; Auto-generated. Do not edit!


(cl:in-package navx_offset_controller-srv)


;//! \htmlinclude NavXSrv-request.msg.html

(cl:defclass <NavXSrv-request> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass NavXSrv-request (<NavXSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavXSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavXSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navx_offset_controller-srv:<NavXSrv-request> is deprecated: use navx_offset_controller-srv:NavXSrv-request instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <NavXSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader navx_offset_controller-srv:value-val is deprecated.  Use navx_offset_controller-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavXSrv-request>) ostream)
  "Serializes a message object of type '<NavXSrv-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavXSrv-request>) istream)
  "Deserializes a message object of type '<NavXSrv-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavXSrv-request>)))
  "Returns string type for a service object of type '<NavXSrv-request>"
  "navx_offset_controller/NavXSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavXSrv-request)))
  "Returns string type for a service object of type 'NavXSrv-request"
  "navx_offset_controller/NavXSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavXSrv-request>)))
  "Returns md5sum for a message object of type '<NavXSrv-request>"
  "1b1594d2b74931ef8fe7be8e2d594455")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavXSrv-request)))
  "Returns md5sum for a message object of type 'NavXSrv-request"
  "1b1594d2b74931ef8fe7be8e2d594455")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavXSrv-request>)))
  "Returns full string definition for message of type '<NavXSrv-request>"
  (cl:format cl:nil "float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavXSrv-request)))
  "Returns full string definition for message of type 'NavXSrv-request"
  (cl:format cl:nil "float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavXSrv-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavXSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'NavXSrv-request
    (cl:cons ':value (value msg))
))
;//! \htmlinclude NavXSrv-response.msg.html

(cl:defclass <NavXSrv-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass NavXSrv-response (<NavXSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavXSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavXSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name navx_offset_controller-srv:<NavXSrv-response> is deprecated: use navx_offset_controller-srv:NavXSrv-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavXSrv-response>) ostream)
  "Serializes a message object of type '<NavXSrv-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavXSrv-response>) istream)
  "Deserializes a message object of type '<NavXSrv-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavXSrv-response>)))
  "Returns string type for a service object of type '<NavXSrv-response>"
  "navx_offset_controller/NavXSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavXSrv-response)))
  "Returns string type for a service object of type 'NavXSrv-response"
  "navx_offset_controller/NavXSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavXSrv-response>)))
  "Returns md5sum for a message object of type '<NavXSrv-response>"
  "1b1594d2b74931ef8fe7be8e2d594455")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavXSrv-response)))
  "Returns md5sum for a message object of type 'NavXSrv-response"
  "1b1594d2b74931ef8fe7be8e2d594455")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavXSrv-response>)))
  "Returns full string definition for message of type '<NavXSrv-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavXSrv-response)))
  "Returns full string definition for message of type 'NavXSrv-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavXSrv-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavXSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'NavXSrv-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'NavXSrv)))
  'NavXSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'NavXSrv)))
  'NavXSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavXSrv)))
  "Returns string type for a service object of type '<NavXSrv>"
  "navx_offset_controller/NavXSrv")