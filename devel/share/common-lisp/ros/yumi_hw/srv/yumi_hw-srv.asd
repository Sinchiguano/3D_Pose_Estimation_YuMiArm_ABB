
(cl:in-package :asdf)

(defsystem "yumi_hw-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "YumiGrasp" :depends-on ("_package_YumiGrasp"))
    (:file "_package_YumiGrasp" :depends-on ("_package"))
  ))