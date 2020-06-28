
(cl:in-package :asdf)

(defsystem "base_trajectory-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :base_trajectory-msg
               :nav_msgs-msg
               :trajectory_msgs-msg
)
  :components ((:file "_package")
    (:file "GenerateSpline" :depends-on ("_package_GenerateSpline"))
    (:file "_package_GenerateSpline" :depends-on ("_package"))
  ))