;; Auto-generated. Do not edit!


(when (boundp 'talon_swerve_drive_controller::SetXY)
  (if (not (find-package "TALON_SWERVE_DRIVE_CONTROLLER"))
    (make-package "TALON_SWERVE_DRIVE_CONTROLLER"))
  (shadow 'SetXY (find-package "TALON_SWERVE_DRIVE_CONTROLLER")))
(unless (find-package "TALON_SWERVE_DRIVE_CONTROLLER::SETXY")
  (make-package "TALON_SWERVE_DRIVE_CONTROLLER::SETXY"))
(unless (find-package "TALON_SWERVE_DRIVE_CONTROLLER::SETXYREQUEST")
  (make-package "TALON_SWERVE_DRIVE_CONTROLLER::SETXYREQUEST"))
(unless (find-package "TALON_SWERVE_DRIVE_CONTROLLER::SETXYRESPONSE")
  (make-package "TALON_SWERVE_DRIVE_CONTROLLER::SETXYRESPONSE"))

(in-package "ROS")





(defclass talon_swerve_drive_controller::SetXYRequest
  :super ros::object
  :slots (_x _y ))

(defmethod talon_swerve_drive_controller::SetXYRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass talon_swerve_drive_controller::SetXYResponse
  :super ros::object
  :slots ())

(defmethod talon_swerve_drive_controller::SetXYResponse
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

(defclass talon_swerve_drive_controller::SetXY
  :super ros::object
  :slots ())

(setf (get talon_swerve_drive_controller::SetXY :md5sum-) "209f516d3eb691f0663e25cb750d67c1")
(setf (get talon_swerve_drive_controller::SetXY :datatype-) "talon_swerve_drive_controller/SetXY")
(setf (get talon_swerve_drive_controller::SetXY :request) talon_swerve_drive_controller::SetXYRequest)
(setf (get talon_swerve_drive_controller::SetXY :response) talon_swerve_drive_controller::SetXYResponse)

(defmethod talon_swerve_drive_controller::SetXYRequest
  (:response () (instance talon_swerve_drive_controller::SetXYResponse :init)))

(setf (get talon_swerve_drive_controller::SetXYRequest :md5sum-) "209f516d3eb691f0663e25cb750d67c1")
(setf (get talon_swerve_drive_controller::SetXYRequest :datatype-) "talon_swerve_drive_controller/SetXYRequest")
(setf (get talon_swerve_drive_controller::SetXYRequest :definition-)
      "float64 x
float64 y
---


")

(setf (get talon_swerve_drive_controller::SetXYResponse :md5sum-) "209f516d3eb691f0663e25cb750d67c1")
(setf (get talon_swerve_drive_controller::SetXYResponse :datatype-) "talon_swerve_drive_controller/SetXYResponse")
(setf (get talon_swerve_drive_controller::SetXYResponse :definition-)
      "float64 x
float64 y
---


")



(provide :talon_swerve_drive_controller/SetXY "209f516d3eb691f0663e25cb750d67c1")


