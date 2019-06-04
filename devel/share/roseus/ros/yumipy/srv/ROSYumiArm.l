;; Auto-generated. Do not edit!


(when (boundp 'yumipy::ROSYumiArm)
  (if (not (find-package "YUMIPY"))
    (make-package "YUMIPY"))
  (shadow 'ROSYumiArm (find-package "YUMIPY")))
(unless (find-package "YUMIPY::ROSYUMIARM")
  (make-package "YUMIPY::ROSYUMIARM"))
(unless (find-package "YUMIPY::ROSYUMIARMREQUEST")
  (make-package "YUMIPY::ROSYUMIARMREQUEST"))
(unless (find-package "YUMIPY::ROSYUMIARMRESPONSE")
  (make-package "YUMIPY::ROSYUMIARMRESPONSE"))

(in-package "ROS")





(defclass yumipy::ROSYumiArmRequest
  :super ros::object
  :slots (_func _args _kwargs ))

(defmethod yumipy::ROSYumiArmRequest
  (:init
   (&key
    ((:func __func) "")
    ((:args __args) "")
    ((:kwargs __kwargs) "")
    )
   (send-super :init)
   (setq _func (string __func))
   (setq _args (string __args))
   (setq _kwargs (string __kwargs))
   self)
  (:func
   (&optional __func)
   (if __func (setq _func __func)) _func)
  (:args
   (&optional __args)
   (if __args (setq _args __args)) _args)
  (:kwargs
   (&optional __kwargs)
   (if __kwargs (setq _kwargs __kwargs)) _kwargs)
  (:serialization-length
   ()
   (+
    ;; string _func
    4 (length _func)
    ;; string _args
    4 (length _args)
    ;; string _kwargs
    4 (length _kwargs)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _func
       (write-long (length _func) s) (princ _func s)
     ;; string _args
       (write-long (length _args) s) (princ _args s)
     ;; string _kwargs
       (write-long (length _kwargs) s) (princ _kwargs s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _func
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _func (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _args
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _args (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _kwargs
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _kwargs (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass yumipy::ROSYumiArmResponse
  :super ros::object
  :slots (_ret ))

(defmethod yumipy::ROSYumiArmResponse
  (:init
   (&key
    ((:ret __ret) "")
    )
   (send-super :init)
   (setq _ret (string __ret))
   self)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:serialization-length
   ()
   (+
    ;; string _ret
    4 (length _ret)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ret
       (write-long (length _ret) s) (princ _ret s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ret
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ret (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass yumipy::ROSYumiArm
  :super ros::object
  :slots ())

(setf (get yumipy::ROSYumiArm :md5sum-) "a5f31b322bc70c99cdf226b9d88321e7")
(setf (get yumipy::ROSYumiArm :datatype-) "yumipy/ROSYumiArm")
(setf (get yumipy::ROSYumiArm :request) yumipy::ROSYumiArmRequest)
(setf (get yumipy::ROSYumiArm :response) yumipy::ROSYumiArmResponse)

(defmethod yumipy::ROSYumiArmRequest
  (:response () (instance yumipy::ROSYumiArmResponse :init)))

(setf (get yumipy::ROSYumiArmRequest :md5sum-) "a5f31b322bc70c99cdf226b9d88321e7")
(setf (get yumipy::ROSYumiArmRequest :datatype-) "yumipy/ROSYumiArmRequest")
(setf (get yumipy::ROSYumiArmRequest :definition-)
      "string func
string args
string kwargs
---
string ret

")

(setf (get yumipy::ROSYumiArmResponse :md5sum-) "a5f31b322bc70c99cdf226b9d88321e7")
(setf (get yumipy::ROSYumiArmResponse :datatype-) "yumipy/ROSYumiArmResponse")
(setf (get yumipy::ROSYumiArmResponse :definition-)
      "string func
string args
string kwargs
---
string ret

")



(provide :yumipy/ROSYumiArm "a5f31b322bc70c99cdf226b9d88321e7")


