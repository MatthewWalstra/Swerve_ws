
(cl:in-package :asdf)

(defsystem "imu_zero-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ImuZeroAngle" :depends-on ("_package_ImuZeroAngle"))
    (:file "_package_ImuZeroAngle" :depends-on ("_package"))
  ))