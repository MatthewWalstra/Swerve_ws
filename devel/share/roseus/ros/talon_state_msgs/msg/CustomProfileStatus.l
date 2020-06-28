;; Auto-generated. Do not edit!


(when (boundp 'talon_state_msgs::CustomProfileStatus)
  (if (not (find-package "TALON_STATE_MSGS"))
    (make-package "TALON_STATE_MSGS"))
  (shadow 'CustomProfileStatus (find-package "TALON_STATE_MSGS")))
(unless (find-package "TALON_STATE_MSGS::CUSTOMPROFILESTATUS")
  (make-package "TALON_STATE_MSGS::CUSTOMPROFILESTATUS"))

(in-package "ROS")
;;//! \htmlinclude CustomProfileStatus.msg.html


(defclass talon_state_msgs::CustomProfileStatus
  :super ros::object
  :slots (_running _slotRunning _remainingPoints _remainingTime _outOfPoints ))

(defmethod talon_state_msgs::CustomProfileStatus
  (:init
   (&key
    ((:running __running) nil)
    ((:slotRunning __slotRunning) 0)
    ((:remainingPoints __remainingPoints) (make-array 0 :initial-element 0 :element-type :integer))
    ((:remainingTime __remainingTime) 0.0)
    ((:outOfPoints __outOfPoints) nil)
    )
   (send-super :init)
   (setq _running __running)
   (setq _slotRunning (round __slotRunning))
   (setq _remainingPoints __remainingPoints)
   (setq _remainingTime (float __remainingTime))
   (setq _outOfPoints __outOfPoints)
   self)
  (:running
   (&optional __running)
   (if __running (setq _running __running)) _running)
  (:slotRunning
   (&optional __slotRunning)
   (if __slotRunning (setq _slotRunning __slotRunning)) _slotRunning)
  (:remainingPoints
   (&optional __remainingPoints)
   (if __remainingPoints (setq _remainingPoints __remainingPoints)) _remainingPoints)
  (:remainingTime
   (&optional __remainingTime)
   (if __remainingTime (setq _remainingTime __remainingTime)) _remainingTime)
  (:outOfPoints
   (&optional __outOfPoints)
   (if __outOfPoints (setq _outOfPoints __outOfPoints)) _outOfPoints)
  (:serialization-length
   ()
   (+
    ;; bool _running
    1
    ;; int32 _slotRunning
    4
    ;; int32[] _remainingPoints
    (* 4    (length _remainingPoints)) 4
    ;; float64 _remainingTime
    8
    ;; bool _outOfPoints
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _running
       (if _running (write-byte -1 s) (write-byte 0 s))
     ;; int32 _slotRunning
       (write-long _slotRunning s)
     ;; int32[] _remainingPoints
     (write-long (length _remainingPoints) s)
     (dotimes (i (length _remainingPoints))
       (write-long (elt _remainingPoints i) s)
       )
     ;; float64 _remainingTime
       (sys::poke _remainingTime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _outOfPoints
       (if _outOfPoints (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _running
     (setq _running (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _slotRunning
     (setq _slotRunning (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _remainingPoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _remainingPoints (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _remainingPoints i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64 _remainingTime
     (setq _remainingTime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _outOfPoints
     (setq _outOfPoints (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get talon_state_msgs::CustomProfileStatus :md5sum-) "88d6d29a2f14590c2629fee009ce5b24")
(setf (get talon_state_msgs::CustomProfileStatus :datatype-) "talon_state_msgs/CustomProfileStatus")
(setf (get talon_state_msgs::CustomProfileStatus :definition-)
      "bool running
int32 slotRunning
int32[] remainingPoints
float64 remainingTime
bool outOfPoints

")



(provide :talon_state_msgs/CustomProfileStatus "88d6d29a2f14590c2629fee009ce5b24")


