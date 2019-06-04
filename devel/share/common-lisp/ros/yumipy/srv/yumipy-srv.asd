
(cl:in-package :asdf)

(defsystem "yumipy-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ROSYumiArm" :depends-on ("_package_ROSYumiArm"))
    (:file "_package_ROSYumiArm" :depends-on ("_package"))
  ))