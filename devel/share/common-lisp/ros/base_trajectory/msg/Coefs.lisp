; Auto-generated. Do not edit!


(cl:in-package base_trajectory-msg)


;//! \htmlinclude Coefs.msg.html

(cl:defclass <Coefs> (roslisp-msg-protocol:ros-message)
  ((spline
    :reader spline
    :initarg :spline
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Coefs (<Coefs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Coefs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Coefs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name base_trajectory-msg:<Coefs> is deprecated: use base_trajectory-msg:Coefs instead.")))

(cl:ensure-generic-function 'spline-val :lambda-list '(m))
(cl:defmethod spline-val ((m <Coefs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader base_trajectory-msg:spline-val is deprecated.  Use base_trajectory-msg:spline instead.")
  (spline m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Coefs>) ostream)
  "Serializes a message object of type '<Coefs>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'spline))))
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
   (cl:slot-value msg 'spline))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Coefs>) istream)
  "Deserializes a message object of type '<Coefs>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'spline) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'spline)))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Coefs>)))
  "Returns string type for a message object of type '<Coefs>"
  "base_trajectory/Coefs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Coefs)))
  "Returns string type for a message object of type 'Coefs"
  "base_trajectory/Coefs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Coefs>)))
  "Returns md5sum for a message object of type '<Coefs>"
  "369e2ee5470491d0958d361c6498cf95")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Coefs)))
  "Returns md5sum for a message object of type 'Coefs"
  "369e2ee5470491d0958d361c6498cf95")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Coefs>)))
  "Returns full string definition for message of type '<Coefs>"
  (cl:format cl:nil "float64[] spline~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Coefs)))
  "Returns full string definition for message of type 'Coefs"
  (cl:format cl:nil "float64[] spline~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Coefs>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'spline) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Coefs>))
  "Converts a ROS message object to a list"
  (cl:list 'Coefs
    (cl:cons ':spline (spline msg))
))
