
(cl:in-package :asdf)

(defsystem "base_trajectory-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Coefs" :depends-on ("_package_Coefs"))
    (:file "_package_Coefs" :depends-on ("_package"))
    (:file "Coefs" :depends-on ("_package_Coefs"))
    (:file "_package_Coefs" :depends-on ("_package"))
  ))