;; Auto-generated. Do not edit!


(when (boundp 'ddynamic_reconfigure::TutorialParams)
  (if (not (find-package "DDYNAMIC_RECONFIGURE"))
    (make-package "DDYNAMIC_RECONFIGURE"))
  (shadow 'TutorialParams (find-package "DDYNAMIC_RECONFIGURE")))
(unless (find-package "DDYNAMIC_RECONFIGURE::TUTORIALPARAMS")
  (make-package "DDYNAMIC_RECONFIGURE::TUTORIALPARAMS"))
(unless (find-package "DDYNAMIC_RECONFIGURE::TUTORIALPARAMSREQUEST")
  (make-package "DDYNAMIC_RECONFIGURE::TUTORIALPARAMSREQUEST"))
(unless (find-package "DDYNAMIC_RECONFIGURE::TUTORIALPARAMSRESPONSE")
  (make-package "DDYNAMIC_RECONFIGURE::TUTORIALPARAMSRESPONSE"))

(in-package "ROS")





(defclass ddynamic_reconfigure::TutorialParamsRequest
  :super ros::object
  :slots ())

(defmethod ddynamic_reconfigure::TutorialParamsRequest
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

(defclass ddynamic_reconfigure::TutorialParamsResponse
  :super ros::object
  :slots (_int_param _double_param _str_param _bool_param _enum_param ))

(defmethod ddynamic_reconfigure::TutorialParamsResponse
  (:init
   (&key
    ((:int_param __int_param) 0)
    ((:double_param __double_param) 0.0)
    ((:str_param __str_param) "")
    ((:bool_param __bool_param) nil)
    ((:enum_param __enum_param) 0)
    )
   (send-super :init)
   (setq _int_param (round __int_param))
   (setq _double_param (float __double_param))
   (setq _str_param (string __str_param))
   (setq _bool_param __bool_param)
   (setq _enum_param (round __enum_param))
   self)
  (:int_param
   (&optional __int_param)
   (if __int_param (setq _int_param __int_param)) _int_param)
  (:double_param
   (&optional __double_param)
   (if __double_param (setq _double_param __double_param)) _double_param)
  (:str_param
   (&optional __str_param)
   (if __str_param (setq _str_param __str_param)) _str_param)
  (:bool_param
   (&optional __bool_param)
   (if __bool_param (setq _bool_param __bool_param)) _bool_param)
  (:enum_param
   (&optional __enum_param)
   (if __enum_param (setq _enum_param __enum_param)) _enum_param)
  (:serialization-length
   ()
   (+
    ;; int32 _int_param
    4
    ;; float64 _double_param
    8
    ;; string _str_param
    4 (length _str_param)
    ;; bool _bool_param
    1
    ;; int32 _enum_param
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _int_param
       (write-long _int_param s)
     ;; float64 _double_param
       (sys::poke _double_param (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _str_param
       (write-long (length _str_param) s) (princ _str_param s)
     ;; bool _bool_param
       (if _bool_param (write-byte -1 s) (write-byte 0 s))
     ;; int32 _enum_param
       (write-long _enum_param s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _int_param
     (setq _int_param (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _double_param
     (setq _double_param (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _str_param
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _str_param (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _bool_param
     (setq _bool_param (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _enum_param
     (setq _enum_param (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ddynamic_reconfigure::TutorialParams
  :super ros::object
  :slots ())

(setf (get ddynamic_reconfigure::TutorialParams :md5sum-) "2b2d98973833896677e387258d00296b")
(setf (get ddynamic_reconfigure::TutorialParams :datatype-) "ddynamic_reconfigure/TutorialParams")
(setf (get ddynamic_reconfigure::TutorialParams :request) ddynamic_reconfigure::TutorialParamsRequest)
(setf (get ddynamic_reconfigure::TutorialParams :response) ddynamic_reconfigure::TutorialParamsResponse)

(defmethod ddynamic_reconfigure::TutorialParamsRequest
  (:response () (instance ddynamic_reconfigure::TutorialParamsResponse :init)))

(setf (get ddynamic_reconfigure::TutorialParamsRequest :md5sum-) "2b2d98973833896677e387258d00296b")
(setf (get ddynamic_reconfigure::TutorialParamsRequest :datatype-) "ddynamic_reconfigure/TutorialParamsRequest")
(setf (get ddynamic_reconfigure::TutorialParamsRequest :definition-)
      "---
int32 int_param
float64 double_param
string str_param
bool bool_param
int32 enum_param
")

(setf (get ddynamic_reconfigure::TutorialParamsResponse :md5sum-) "2b2d98973833896677e387258d00296b")
(setf (get ddynamic_reconfigure::TutorialParamsResponse :datatype-) "ddynamic_reconfigure/TutorialParamsResponse")
(setf (get ddynamic_reconfigure::TutorialParamsResponse :definition-)
      "---
int32 int_param
float64 double_param
string str_param
bool bool_param
int32 enum_param
")



(provide :ddynamic_reconfigure/TutorialParams "2b2d98973833896677e387258d00296b")


