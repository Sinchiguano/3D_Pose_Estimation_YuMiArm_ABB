;; Auto-generated. Do not edit!


(when (boundp 'autolab_core::RigidTransformListener)
  (if (not (find-package "AUTOLAB_CORE"))
    (make-package "AUTOLAB_CORE"))
  (shadow 'RigidTransformListener (find-package "AUTOLAB_CORE")))
(unless (find-package "AUTOLAB_CORE::RIGIDTRANSFORMLISTENER")
  (make-package "AUTOLAB_CORE::RIGIDTRANSFORMLISTENER"))
(unless (find-package "AUTOLAB_CORE::RIGIDTRANSFORMLISTENERREQUEST")
  (make-package "AUTOLAB_CORE::RIGIDTRANSFORMLISTENERREQUEST"))
(unless (find-package "AUTOLAB_CORE::RIGIDTRANSFORMLISTENERRESPONSE")
  (make-package "AUTOLAB_CORE::RIGIDTRANSFORMLISTENERRESPONSE"))

(in-package "ROS")





(defclass autolab_core::RigidTransformListenerRequest
  :super ros::object
  :slots (_from_frame _to_frame ))

(defmethod autolab_core::RigidTransformListenerRequest
  (:init
   (&key
    ((:from_frame __from_frame) "")
    ((:to_frame __to_frame) "")
    )
   (send-super :init)
   (setq _from_frame (string __from_frame))
   (setq _to_frame (string __to_frame))
   self)
  (:from_frame
   (&optional __from_frame)
   (if __from_frame (setq _from_frame __from_frame)) _from_frame)
  (:to_frame
   (&optional __to_frame)
   (if __to_frame (setq _to_frame __to_frame)) _to_frame)
  (:serialization-length
   ()
   (+
    ;; string _from_frame
    4 (length _from_frame)
    ;; string _to_frame
    4 (length _to_frame)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _from_frame
       (write-long (length _from_frame) s) (princ _from_frame s)
     ;; string _to_frame
       (write-long (length _to_frame) s) (princ _to_frame s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _from_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _from_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _to_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _to_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass autolab_core::RigidTransformListenerResponse
  :super ros::object
  :slots (_x_trans _y_trans _z_trans _w_rot _x_rot _y_rot _z_rot ))

(defmethod autolab_core::RigidTransformListenerResponse
  (:init
   (&key
    ((:x_trans __x_trans) 0.0)
    ((:y_trans __y_trans) 0.0)
    ((:z_trans __z_trans) 0.0)
    ((:w_rot __w_rot) 0.0)
    ((:x_rot __x_rot) 0.0)
    ((:y_rot __y_rot) 0.0)
    ((:z_rot __z_rot) 0.0)
    )
   (send-super :init)
   (setq _x_trans (float __x_trans))
   (setq _y_trans (float __y_trans))
   (setq _z_trans (float __z_trans))
   (setq _w_rot (float __w_rot))
   (setq _x_rot (float __x_rot))
   (setq _y_rot (float __y_rot))
   (setq _z_rot (float __z_rot))
   self)
  (:x_trans
   (&optional __x_trans)
   (if __x_trans (setq _x_trans __x_trans)) _x_trans)
  (:y_trans
   (&optional __y_trans)
   (if __y_trans (setq _y_trans __y_trans)) _y_trans)
  (:z_trans
   (&optional __z_trans)
   (if __z_trans (setq _z_trans __z_trans)) _z_trans)
  (:w_rot
   (&optional __w_rot)
   (if __w_rot (setq _w_rot __w_rot)) _w_rot)
  (:x_rot
   (&optional __x_rot)
   (if __x_rot (setq _x_rot __x_rot)) _x_rot)
  (:y_rot
   (&optional __y_rot)
   (if __y_rot (setq _y_rot __y_rot)) _y_rot)
  (:z_rot
   (&optional __z_rot)
   (if __z_rot (setq _z_rot __z_rot)) _z_rot)
  (:serialization-length
   ()
   (+
    ;; float64 _x_trans
    8
    ;; float64 _y_trans
    8
    ;; float64 _z_trans
    8
    ;; float64 _w_rot
    8
    ;; float64 _x_rot
    8
    ;; float64 _y_rot
    8
    ;; float64 _z_rot
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x_trans
       (sys::poke _x_trans (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_trans
       (sys::poke _y_trans (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z_trans
       (sys::poke _z_trans (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _w_rot
       (sys::poke _w_rot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x_rot
       (sys::poke _x_rot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_rot
       (sys::poke _y_rot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z_rot
       (sys::poke _z_rot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x_trans
     (setq _x_trans (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_trans
     (setq _y_trans (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z_trans
     (setq _z_trans (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _w_rot
     (setq _w_rot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x_rot
     (setq _x_rot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_rot
     (setq _y_rot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z_rot
     (setq _z_rot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass autolab_core::RigidTransformListener
  :super ros::object
  :slots ())

(setf (get autolab_core::RigidTransformListener :md5sum-) "1b358ad3ddaa046f03b607401db493d6")
(setf (get autolab_core::RigidTransformListener :datatype-) "autolab_core/RigidTransformListener")
(setf (get autolab_core::RigidTransformListener :request) autolab_core::RigidTransformListenerRequest)
(setf (get autolab_core::RigidTransformListener :response) autolab_core::RigidTransformListenerResponse)

(defmethod autolab_core::RigidTransformListenerRequest
  (:response () (instance autolab_core::RigidTransformListenerResponse :init)))

(setf (get autolab_core::RigidTransformListenerRequest :md5sum-) "1b358ad3ddaa046f03b607401db493d6")
(setf (get autolab_core::RigidTransformListenerRequest :datatype-) "autolab_core/RigidTransformListenerRequest")
(setf (get autolab_core::RigidTransformListenerRequest :definition-)
      "string from_frame
string to_frame
---
float64 x_trans
float64 y_trans
float64 z_trans
float64 w_rot
float64 x_rot
float64 y_rot
float64 z_rot
")

(setf (get autolab_core::RigidTransformListenerResponse :md5sum-) "1b358ad3ddaa046f03b607401db493d6")
(setf (get autolab_core::RigidTransformListenerResponse :datatype-) "autolab_core/RigidTransformListenerResponse")
(setf (get autolab_core::RigidTransformListenerResponse :definition-)
      "string from_frame
string to_frame
---
float64 x_trans
float64 y_trans
float64 z_trans
float64 w_rot
float64 x_rot
float64 y_rot
float64 z_rot
")



(provide :autolab_core/RigidTransformListener "1b358ad3ddaa046f03b607401db493d6")


