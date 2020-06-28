
(cl:in-package :asdf)

(defsystem "talon_swerve_drive_controller-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :trajectory_msgs-msg
)
  :components ((:file "_package")
    (:file "MotionProfile" :depends-on ("_package_MotionProfile"))
    (:file "_package_MotionProfile" :depends-on ("_package"))
    (:file "SetXY" :depends-on ("_package_SetXY"))
    (:file "_package_SetXY" :depends-on ("_package"))
    (:file "WheelPos" :depends-on ("_package_WheelPos"))
    (:file "_package_WheelPos" :depends-on ("_package"))
  ))