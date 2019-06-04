
(cl:in-package :asdf)

(defsystem "autolab_core-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "RigidTransformListener" :depends-on ("_package_RigidTransformListener"))
    (:file "_package_RigidTransformListener" :depends-on ("_package"))
    (:file "RigidTransformPublisher" :depends-on ("_package_RigidTransformPublisher"))
    (:file "_package_RigidTransformPublisher" :depends-on ("_package"))
  ))