;; Auto-generated. Do not edit!


(when (boundp 'ros_control_boilerplate::set_limit_switch)
  (if (not (find-package "ROS_CONTROL_BOILERPLATE"))
    (make-package "ROS_CONTROL_BOILERPLATE"))
  (shadow 'set_limit_switch (find-package "ROS_CONTROL_BOILERPLATE")))
(unless (find-package "ROS_CONTROL_BOILERPLATE::SET_LIMIT_SWITCH")
  (make-package "ROS_CONTROL_BOILERPLATE::SET_LIMIT_SWITCH"))
(unless (find-package "ROS_CONTROL_BOILERPLATE::SET_LIMIT_SWITCHREQUEST")
  (make-package "ROS_CONTROL_BOILERPLATE::SET_LIMIT_SWITCHREQUEST"))
(unless (find-package "ROS_CONTROL_BOILERPLATE::SET_LIMIT_SWITCHRESPONSE")
  (make-package "ROS_CONTROL_BOILERPLATE::SET_LIMIT_SWITCHRESPONSE"))

(in-package "ROS")





(defclass ros_control_boilerplate::set_limit_switchRequest
  :super ros::object
  :slots (_target_joint_id _target_joint_name _forward _reverse ))

(defmethod ros_control_boilerplate::set_limit_switchRequest
  (:init
   (&key
    ((:target_joint_id __target_joint_id) 0)
    ((:target_joint_name __target_joint_name) "")
    ((:forward __forward) nil)
    ((:reverse __reverse) nil)
    )
   (send-super :init)
   (setq _target_joint_id (round __target_joint_id))
   (setq _target_joint_name (string __target_joint_name))
   (setq _forward __forward)
   (setq _reverse __reverse)
   self)
  (:target_joint_id
   (&optional __target_joint_id)
   (if __target_joint_id (setq _target_joint_id __target_joint_id)) _target_joint_id)
  (:target_joint_name
   (&optional __target_joint_name)
   (if __target_joint_name (setq _target_joint_name __target_joint_name)) _target_joint_name)
  (:forward
   (&optional __forward)
   (if __forward (setq _forward __forward)) _forward)
  (:reverse
   (&optional __reverse)
   (if __reverse (setq _reverse __reverse)) _reverse)
  (:serialization-length
   ()
   (+
    ;; uint8 _target_joint_id
    1
    ;; string _target_joint_name
    4 (length _target_joint_name)
    ;; bool _forward
    1
    ;; bool _reverse
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _target_joint_id
       (write-byte _target_joint_id s)
     ;; string _target_joint_name
       (write-long (length _target_joint_name) s) (princ _target_joint_name s)
     ;; bool _forward
       (if _forward (write-byte -1 s) (write-byte 0 s))
     ;; bool _reverse
       (if _reverse (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _target_joint_id
     (setq _target_joint_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _target_joint_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_joint_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _forward
     (setq _forward (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reverse
     (setq _reverse (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ros_control_boilerplate::set_limit_switchResponse
  :super ros::object
  :slots ())

(defmethod ros_control_boilerplate::set_limit_switchResponse
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

(defclass ros_control_boilerplate::set_limit_switch
  :super ros::object
  :slots ())

(setf (get ros_control_boilerplate::set_limit_switch :md5sum-) "aea7656fc087d7bb28bae4c37dc4edcd")
(setf (get ros_control_boilerplate::set_limit_switch :datatype-) "ros_control_boilerplate/set_limit_switch")
(setf (get ros_control_boilerplate::set_limit_switch :request) ros_control_boilerplate::set_limit_switchRequest)
(setf (get ros_control_boilerplate::set_limit_switch :response) ros_control_boilerplate::set_limit_switchResponse)

(defmethod ros_control_boilerplate::set_limit_switchRequest
  (:response () (instance ros_control_boilerplate::set_limit_switchResponse :init)))

(setf (get ros_control_boilerplate::set_limit_switchRequest :md5sum-) "aea7656fc087d7bb28bae4c37dc4edcd")
(setf (get ros_control_boilerplate::set_limit_switchRequest :datatype-) "ros_control_boilerplate/set_limit_switchRequest")
(setf (get ros_control_boilerplate::set_limit_switchRequest :definition-)
      "uint8 target_joint_id
string target_joint_name
bool forward
bool reverse
---

")

(setf (get ros_control_boilerplate::set_limit_switchResponse :md5sum-) "aea7656fc087d7bb28bae4c37dc4edcd")
(setf (get ros_control_boilerplate::set_limit_switchResponse :datatype-) "ros_control_boilerplate/set_limit_switchResponse")
(setf (get ros_control_boilerplate::set_limit_switchResponse :definition-)
      "uint8 target_joint_id
string target_joint_name
bool forward
bool reverse
---

")



(provide :ros_control_boilerplate/set_limit_switch "aea7656fc087d7bb28bae4c37dc4edcd")

