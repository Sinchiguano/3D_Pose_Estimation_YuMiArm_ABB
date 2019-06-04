;; Auto-generated. Do not edit!


(when (boundp 'yumi_hw::YumiGrasp)
  (if (not (find-package "YUMI_HW"))
    (make-package "YUMI_HW"))
  (shadow 'YumiGrasp (find-package "YUMI_HW")))
(unless (find-package "YUMI_HW::YUMIGRASP")
  (make-package "YUMI_HW::YUMIGRASP"))
(unless (find-package "YUMI_HW::YUMIGRASPREQUEST")
  (make-package "YUMI_HW::YUMIGRASPREQUEST"))
(unless (find-package "YUMI_HW::YUMIGRASPRESPONSE")
  (make-package "YUMI_HW::YUMIGRASPRESPONSE"))

(in-package "ROS")





(intern "*LEFT_GRIPPER*" (find-package "YUMI_HW::YUMIGRASPREQUEST"))
(shadow '*LEFT_GRIPPER* (find-package "YUMI_HW::YUMIGRASPREQUEST"))
(defconstant yumi_hw::YumiGraspRequest::*LEFT_GRIPPER* 1)
(intern "*RIGHT_GRIPPER*" (find-package "YUMI_HW::YUMIGRASPREQUEST"))
(shadow '*RIGHT_GRIPPER* (find-package "YUMI_HW::YUMIGRASPREQUEST"))
(defconstant yumi_hw::YumiGraspRequest::*RIGHT_GRIPPER* 2)
(defclass yumi_hw::YumiGraspRequest
  :super ros::object
  :slots (_gripper_id ))

(defmethod yumi_hw::YumiGraspRequest
  (:init
   (&key
    ((:gripper_id __gripper_id) 0)
    )
   (send-super :init)
   (setq _gripper_id (round __gripper_id))
   self)
  (:gripper_id
   (&optional __gripper_id)
   (if __gripper_id (setq _gripper_id __gripper_id)) _gripper_id)
  (:serialization-length
   ()
   (+
    ;; uint16 _gripper_id
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _gripper_id
       (write-word _gripper_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _gripper_id
     (setq _gripper_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass yumi_hw::YumiGraspResponse
  :super ros::object
  :slots ())

(defmethod yumi_hw::YumiGraspResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass yumi_hw::YumiGrasp
  :super ros::object
  :slots ())

(setf (get yumi_hw::YumiGrasp :md5sum-) "26ac3d04102c2e5c0d5e4e1367d0349b")
(setf (get yumi_hw::YumiGrasp :datatype-) "yumi_hw/YumiGrasp")
(setf (get yumi_hw::YumiGrasp :request) yumi_hw::YumiGraspRequest)
(setf (get yumi_hw::YumiGrasp :response) yumi_hw::YumiGraspResponse)

(defmethod yumi_hw::YumiGraspRequest
  (:response () (instance yumi_hw::YumiGraspResponse :init)))

(setf (get yumi_hw::YumiGraspRequest :md5sum-) "26ac3d04102c2e5c0d5e4e1367d0349b")
(setf (get yumi_hw::YumiGraspRequest :datatype-) "yumi_hw/YumiGraspRequest")
(setf (get yumi_hw::YumiGraspRequest :definition-)
      "uint16 LEFT_GRIPPER=1
uint16 RIGHT_GRIPPER=2

uint16 gripper_id
---

")

(setf (get yumi_hw::YumiGraspResponse :md5sum-) "26ac3d04102c2e5c0d5e4e1367d0349b")
(setf (get yumi_hw::YumiGraspResponse :datatype-) "yumi_hw/YumiGraspResponse")
(setf (get yumi_hw::YumiGraspResponse :definition-)
      "uint16 LEFT_GRIPPER=1
uint16 RIGHT_GRIPPER=2

uint16 gripper_id
---

")



(provide :yumi_hw/YumiGrasp "26ac3d04102c2e5c0d5e4e1367d0349b")


