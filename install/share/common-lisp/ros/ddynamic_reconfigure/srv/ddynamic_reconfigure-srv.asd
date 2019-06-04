
(cl:in-package :asdf)

(defsystem "ddynamic_reconfigure-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TutorialParams" :depends-on ("_package_TutorialParams"))
    (:file "_package_TutorialParams" :depends-on ("_package"))
  ))