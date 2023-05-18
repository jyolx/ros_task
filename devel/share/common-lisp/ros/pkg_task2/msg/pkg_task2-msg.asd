
(cl:in-package :asdf)

(defsystem "pkg_task2-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "temp1" :depends-on ("_package_temp1"))
    (:file "_package_temp1" :depends-on ("_package"))
    (:file "temp2" :depends-on ("_package_temp2"))
    (:file "_package_temp2" :depends-on ("_package"))
  ))