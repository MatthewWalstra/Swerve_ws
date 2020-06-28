;; Auto-generated. Do not edit!


(when (boundp 'navx_offset_controller::NavXSrv)
  (if (not (find-package "NAVX_OFFSET_CONTROLLER"))
    (make-package "NAVX_OFFSET_CONTROLLER"))
  (shadow 'NavXSrv (find-package "NAVX_OFFSET_CONTROLLER")))
(unless (find-package "NAVX_OFFSET_CONTROLLER::NAVXSRV")
  (make-package "NAVX_OFFSET_CONTROLLER::NAVXSRV"))
(unless (find-package "NAVX_OFFSET_CONTROLLER::NAVXSRVREQUEST")
  (make-package "NAVX_OFFSET_CONTROLLER::NAVXSRVREQUEST"))
(unless (find-package "NAVX_OFFSET_CONTROLLER::NAVXSRVRESPONSE")
  (make-package "NAVX_OFFSET_CONTROLLER::NAVXSRVRESPONSE"))

(in-package "ROS")





(defclass navx_offset_controller::NavXSrvRequest
  :super ros::object
  :slots (_value ))

(defmethod navx_offset_controller::NavXSrvRequest
  (:init
   (&key
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _value (float __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; float64 _value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass navx_offset_controller::NavXSrvResponse
  :super ros::object
  :slots ())

(defmethod navx_offset_controller::NavXSrvResponse
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

(defclass navx_offset_controller::NavXSrv
  :super ros::object
  :slots ())

(setf (get navx_offset_controller::NavXSrv :md5sum-) "1b1594d2b74931ef8fe7be8e2d594455")
(setf (get navx_offset_controller::NavXSrv :datatype-) "navx_offset_controller/NavXSrv")
(setf (get navx_offset_controller::NavXSrv :request) navx_offset_controller::NavXSrvRequest)
(setf (get navx_offset_controller::NavXSrv :response) navx_offset_controller::NavXSrvResponse)

(defmethod navx_offset_controller::NavXSrvRequest
  (:response () (instance navx_offset_controller::NavXSrvResponse :init)))

(setf (get navx_offset_controller::NavXSrvRequest :md5sum-) "1b1594d2b74931ef8fe7be8e2d594455")
(setf (get navx_offset_controller::NavXSrvRequest :datatype-) "navx_offset_controller/NavXSrvRequest")
(setf (get navx_offset_controller::NavXSrvRequest :definition-)
      "float64 value
---

")

(setf (get navx_offset_controller::NavXSrvResponse :md5sum-) "1b1594d2b74931ef8fe7be8e2d594455")
(setf (get navx_offset_controller::NavXSrvResponse :datatype-) "navx_offset_controller/NavXSrvResponse")
(setf (get navx_offset_controller::NavXSrvResponse :definition-)
      "float64 value
---

")



(provide :navx_offset_controller/NavXSrv "1b1594d2b74931ef8fe7be8e2d594455")


