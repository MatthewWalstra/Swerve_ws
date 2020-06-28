;; Auto-generated. Do not edit!


(when (boundp 'base_trajectory::GenerateSpline)
  (if (not (find-package "BASE_TRAJECTORY"))
    (make-package "BASE_TRAJECTORY"))
  (shadow 'GenerateSpline (find-package "BASE_TRAJECTORY")))
(unless (find-package "BASE_TRAJECTORY::GENERATESPLINE")
  (make-package "BASE_TRAJECTORY::GENERATESPLINE"))
(unless (find-package "BASE_TRAJECTORY::GENERATESPLINEREQUEST")
  (make-package "BASE_TRAJECTORY::GENERATESPLINEREQUEST"))
(unless (find-package "BASE_TRAJECTORY::GENERATESPLINERESPONSE")
  (make-package "BASE_TRAJECTORY::GENERATESPLINERESPONSE"))

(in-package "ROS")

(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))


(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass base_trajectory::GenerateSplineRequest
  :super ros::object
  :slots (_points ))

(defmethod base_trajectory::GenerateSplineRequest
  (:init
   (&key
    ((:points __points) (let (r) (dotimes (i 0) (push (instance trajectory_msgs::JointTrajectoryPoint :init) r)) r))
    )
   (send-super :init)
   (setq _points __points)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; trajectory_msgs/JointTrajectoryPoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; trajectory_msgs/JointTrajectoryPoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; trajectory_msgs/JointTrajectoryPoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance trajectory_msgs::JointTrajectoryPoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass base_trajectory::GenerateSplineResponse
  :super ros::object
  :slots (_orient_coefs _x_coefs _y_coefs _end_points _path ))

(defmethod base_trajectory::GenerateSplineResponse
  (:init
   (&key
    ((:orient_coefs __orient_coefs) (let (r) (dotimes (i 0) (push (instance base_trajectory::Coefs :init) r)) r))
    ((:x_coefs __x_coefs) (let (r) (dotimes (i 0) (push (instance base_trajectory::Coefs :init) r)) r))
    ((:y_coefs __y_coefs) (let (r) (dotimes (i 0) (push (instance base_trajectory::Coefs :init) r)) r))
    ((:end_points __end_points) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:path __path) (instance nav_msgs::Path :init))
    )
   (send-super :init)
   (setq _orient_coefs __orient_coefs)
   (setq _x_coefs __x_coefs)
   (setq _y_coefs __y_coefs)
   (setq _end_points __end_points)
   (setq _path __path)
   self)
  (:orient_coefs
   (&rest __orient_coefs)
   (if (keywordp (car __orient_coefs))
       (send* _orient_coefs __orient_coefs)
     (progn
       (if __orient_coefs (setq _orient_coefs (car __orient_coefs)))
       _orient_coefs)))
  (:x_coefs
   (&rest __x_coefs)
   (if (keywordp (car __x_coefs))
       (send* _x_coefs __x_coefs)
     (progn
       (if __x_coefs (setq _x_coefs (car __x_coefs)))
       _x_coefs)))
  (:y_coefs
   (&rest __y_coefs)
   (if (keywordp (car __y_coefs))
       (send* _y_coefs __y_coefs)
     (progn
       (if __y_coefs (setq _y_coefs (car __y_coefs)))
       _y_coefs)))
  (:end_points
   (&optional __end_points)
   (if __end_points (setq _end_points __end_points)) _end_points)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:serialization-length
   ()
   (+
    ;; base_trajectory/Coefs[] _orient_coefs
    (apply #'+ (send-all _orient_coefs :serialization-length)) 4
    ;; base_trajectory/Coefs[] _x_coefs
    (apply #'+ (send-all _x_coefs :serialization-length)) 4
    ;; base_trajectory/Coefs[] _y_coefs
    (apply #'+ (send-all _y_coefs :serialization-length)) 4
    ;; float64[] _end_points
    (* 8    (length _end_points)) 4
    ;; nav_msgs/Path _path
    (send _path :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; base_trajectory/Coefs[] _orient_coefs
     (write-long (length _orient_coefs) s)
     (dolist (elem _orient_coefs)
       (send elem :serialize s)
       )
     ;; base_trajectory/Coefs[] _x_coefs
     (write-long (length _x_coefs) s)
     (dolist (elem _x_coefs)
       (send elem :serialize s)
       )
     ;; base_trajectory/Coefs[] _y_coefs
     (write-long (length _y_coefs) s)
     (dolist (elem _y_coefs)
       (send elem :serialize s)
       )
     ;; float64[] _end_points
     (write-long (length _end_points) s)
     (dotimes (i (length _end_points))
       (sys::poke (elt _end_points i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; nav_msgs/Path _path
       (send _path :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; base_trajectory/Coefs[] _orient_coefs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _orient_coefs (let (r) (dotimes (i n) (push (instance base_trajectory::Coefs :init) r)) r))
     (dolist (elem- _orient_coefs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; base_trajectory/Coefs[] _x_coefs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x_coefs (let (r) (dotimes (i n) (push (instance base_trajectory::Coefs :init) r)) r))
     (dolist (elem- _x_coefs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; base_trajectory/Coefs[] _y_coefs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y_coefs (let (r) (dotimes (i n) (push (instance base_trajectory::Coefs :init) r)) r))
     (dolist (elem- _y_coefs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64[] _end_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _end_points (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _end_points i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; nav_msgs/Path _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;;
   self)
  )

(defclass base_trajectory::GenerateSpline
  :super ros::object
  :slots ())

(setf (get base_trajectory::GenerateSpline :md5sum-) "2e897a151cd8c4aa6aeb509b833d8007")
(setf (get base_trajectory::GenerateSpline :datatype-) "base_trajectory/GenerateSpline")
(setf (get base_trajectory::GenerateSpline :request) base_trajectory::GenerateSplineRequest)
(setf (get base_trajectory::GenerateSpline :response) base_trajectory::GenerateSplineResponse)

(defmethod base_trajectory::GenerateSplineRequest
  (:response () (instance base_trajectory::GenerateSplineResponse :init)))

(setf (get base_trajectory::GenerateSplineRequest :md5sum-) "2e897a151cd8c4aa6aeb509b833d8007")
(setf (get base_trajectory::GenerateSplineRequest :datatype-) "base_trajectory/GenerateSplineRequest")
(setf (get base_trajectory::GenerateSplineRequest :definition-)
      "trajectory_msgs/JointTrajectoryPoint[] points

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
---
Coefs[] orient_coefs
Coefs[] x_coefs
Coefs[] y_coefs
float64[] end_points
nav_msgs/Path path


================================================================================
MSG: base_trajectory/Coefs
float64[] spline

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get base_trajectory::GenerateSplineResponse :md5sum-) "2e897a151cd8c4aa6aeb509b833d8007")
(setf (get base_trajectory::GenerateSplineResponse :datatype-) "base_trajectory/GenerateSplineResponse")
(setf (get base_trajectory::GenerateSplineResponse :definition-)
      "trajectory_msgs/JointTrajectoryPoint[] points

================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
---
Coefs[] orient_coefs
Coefs[] x_coefs
Coefs[] y_coefs
float64[] end_points
nav_msgs/Path path


================================================================================
MSG: base_trajectory/Coefs
float64[] spline

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :base_trajectory/GenerateSpline "2e897a151cd8c4aa6aeb509b833d8007")


