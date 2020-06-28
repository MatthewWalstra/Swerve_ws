
(cl:in-package :asdf)

(defsystem "navx_offset_controller-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "NavXSrv" :depends-on ("_package_NavXSrv"))
    (:file "_package_NavXSrv" :depends-on ("_package"))
  ))