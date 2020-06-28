;; Auto-generated. Do not edit!


(when (boundp 'imu_zero::ImuZeroAngle)
  (if (not (find-package "IMU_ZERO"))
    (make-package "IMU_ZERO"))
  (shadow 'ImuZeroAngle (find-package "IMU_ZERO")))
(unless (find-package "IMU_ZERO::IMUZEROANGLE")
  (make-package "IMU_ZERO::IMUZEROANGLE"))
(unless (find-package "IMU_ZERO::IMUZEROANGLEREQUEST")
  (make-package "IMU_ZERO::IMUZEROANGLEREQUEST"))
(unless (find-package "IMU_ZERO::IMUZEROANGLERESPONSE")
  (make-package "IMU_ZERO::IMUZEROANGLERESPONSE"))

(in-package "ROS")





(defclass imu_zero::ImuZeroAngleRequest
  :super ros::object
  :slots (_angle ))

(defmethod imu_zero::ImuZeroAngleRequest
  (:init
   (&key
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _angle (float __angle))
   self)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; float64 _angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass imu_zero::ImuZeroAngleResponse
  :super ros::object
  :slots ())

(defmethod imu_zero::ImuZeroAngleResponse
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

(defclass imu_zero::ImuZeroAngle
  :super ros::object
  :slots ())

(setf (get imu_zero::ImuZeroAngle :md5sum-) "4edb55038e2b888976a0c0c56935341c")
(setf (get imu_zero::ImuZeroAngle :datatype-) "imu_zero/ImuZeroAngle")
(setf (get imu_zero::ImuZeroAngle :request) imu_zero::ImuZeroAngleRequest)
(setf (get imu_zero::ImuZeroAngle :response) imu_zero::ImuZeroAngleResponse)

(defmethod imu_zero::ImuZeroAngleRequest
  (:response () (instance imu_zero::ImuZeroAngleResponse :init)))

(setf (get imu_zero::ImuZeroAngleRequest :md5sum-) "4edb55038e2b888976a0c0c56935341c")
(setf (get imu_zero::ImuZeroAngleRequest :datatype-) "imu_zero/ImuZeroAngleRequest")
(setf (get imu_zero::ImuZeroAngleRequest :definition-)
      "float64 angle
---

")

(setf (get imu_zero::ImuZeroAngleResponse :md5sum-) "4edb55038e2b888976a0c0c56935341c")
(setf (get imu_zero::ImuZeroAngleResponse :datatype-) "imu_zero/ImuZeroAngleResponse")
(setf (get imu_zero::ImuZeroAngleResponse :definition-)
      "float64 angle
---

")



(provide :imu_zero/ImuZeroAngle "4edb55038e2b888976a0c0c56935341c")


