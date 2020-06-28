;; Auto-generated. Do not edit!


(when (boundp 'base_trajectory::Coefs)
  (if (not (find-package "BASE_TRAJECTORY"))
    (make-package "BASE_TRAJECTORY"))
  (shadow 'Coefs (find-package "BASE_TRAJECTORY")))
(unless (find-package "BASE_TRAJECTORY::COEFS")
  (make-package "BASE_TRAJECTORY::COEFS"))

(in-package "ROS")
;;//! \htmlinclude Coefs.msg.html


(defclass base_trajectory::Coefs
  :super ros::object
  :slots (_spline ))

(defmethod base_trajectory::Coefs
  (:init
   (&key
    ((:spline __spline) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _spline __spline)
   self)
  (:spline
   (&optional __spline)
   (if __spline (setq _spline __spline)) _spline)
  (:serialization-length
   ()
   (+
    ;; float64[] _spline
    (* 8    (length _spline)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _spline
     (write-long (length _spline) s)
     (dotimes (i (length _spline))
       (sys::poke (elt _spline i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _spline
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _spline (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _spline i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get base_trajectory::Coefs :md5sum-) "369e2ee5470491d0958d361c6498cf95")
(setf (get base_trajectory::Coefs :datatype-) "base_trajectory/Coefs")
(setf (get base_trajectory::Coefs :definition-)
      "float64[] spline

")



(provide :base_trajectory/Coefs "369e2ee5470491d0958d361c6498cf95")


