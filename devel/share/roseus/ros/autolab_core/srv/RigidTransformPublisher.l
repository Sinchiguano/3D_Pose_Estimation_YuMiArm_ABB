;; Auto-generated. Do not edit!


(when (boundp 'autolab_core::RigidTransformPublisher)
  (if (not (find-package "AUTOLAB_CORE"))
    (make-package "AUTOLAB_CORE"))
  (shadow 'RigidTransformPublisher (find-package "AUTOLAB_CORE")))
(unless (find-package "AUTOLAB_CORE::RIGIDTRANSFORMPUBLISHER")
  (make-package "AUTOLAB_CORE::RIGIDTRANSFORMPUBLISHER"))
(unless (find-package "AUTOLAB_CORE::RIGIDTRANSFORMPUBLISHERREQUEST")
  (make-package "AUTOLAB_CORE::RIGIDTRANSFORMPUBLISHERREQUEST"))
(unless (find-package "AUTOLAB_CORE::RIGIDTRANSFORMPUBLISHERRESPONSE")
  (make-package "AUTOLAB_CORE::RIGIDTRANSFORMPUBLISHERRESPONSE"))

(in-package "ROS")





(defclass autolab_core::RigidTransformPublisherRequest
  :super ros::object
  :slots (_x_trans _y_trans _z_trans _w_rot _x_rot _y_rot _z_rot _from_frame _to_frame _mode ))

(defmethod autolab_core::RigidTransformPublisherRequest
  (:init
   (&key
    ((:x_trans __x_trans) 0.0)
    ((:y_trans __y_trans) 0.0)
    ((:z_trans __z_trans) 0.0)
    ((:w_rot __w_rot) 0.0)
    ((:x_rot __x_rot) 0.0)
    ((:y_rot __y_rot) 0.0)
    ((:z_rot __z_rot) 0.0)
    ((:from_frame __from_frame) "")
    ((:to_frame __to_frame) "")
    ((:mode __mode) "")
    )
   (send-super :init)
   (setq _x_trans (float __x_trans))
   (setq _y_trans (float __y_trans))
   (setq _z_trans (float __z_trans))
   (setq _w_rot (float __w_rot))
   (setq _x_rot (float __x_rot))
   (setq _y_rot (float __y_rot))
   (setq _z_rot (float __z_rot))
   (setq _from_frame (string __from_frame))
   (setq _to_frame (string __to_frame))
   (setq _mode (string __mode))
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
  (:from_frame
   (&optional __from_frame)
   (if __from_frame (setq _from_frame __from_frame)) _from_frame)
  (:to_frame
   (&optional __to_frame)
   (if __to_frame (setq _to_frame __to_frame)) _to_frame)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
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
    ;; string _from_frame
    4 (length _from_frame)
    ;; string _to_frame
    4 (length _to_frame)
    ;; string _mode
    4 (length _mode)
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
     ;; string _from_frame
       (write-long (length _from_frame) s) (princ _from_frame s)
     ;; string _to_frame
       (write-long (length _to_frame) s) (princ _to_frame s)
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
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
   ;; string _from_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _from_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _to_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _to_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass autolab_core::RigidTransformPublisherResponse
  :super ros::object
  :slots ())

(defmethod autolab_core::RigidTransformPublisherResponse
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

(defclass autolab_core::RigidTransformPublisher
  :super ros::object
  :slots ())

(setf (get autolab_core::RigidTransformPublisher :md5sum-) "2414e9e80f6a0faf446e445b137fbf6c")
(setf (get autolab_core::RigidTransformPublisher :datatype-) "autolab_core/RigidTransformPublisher")
(setf (get autolab_core::RigidTransformPublisher :request) autolab_core::RigidTransformPublisherRequest)
(setf (get autolab_core::RigidTransformPublisher :response) autolab_core::RigidTransformPublisherResponse)

(defmethod autolab_core::RigidTransformPublisherRequest
  (:response () (instance autolab_core::RigidTransformPublisherResponse :init)))

(setf (get autolab_core::RigidTransformPublisherRequest :md5sum-) "2414e9e80f6a0faf446e445b137fbf6c")
(setf (get autolab_core::RigidTransformPublisherRequest :datatype-) "autolab_core/RigidTransformPublisherRequest")
(setf (get autolab_core::RigidTransformPublisherRequest :definition-)
      "float64 x_trans
float64 y_trans
float64 z_trans
float64 w_rot
float64 x_rot
float64 y_rot
float64 z_rot
string from_frame
string to_frame
string mode
---
")

(setf (get autolab_core::RigidTransformPublisherResponse :md5sum-) "2414e9e80f6a0faf446e445b137fbf6c")
(setf (get autolab_core::RigidTransformPublisherResponse :datatype-) "autolab_core/RigidTransformPublisherResponse")
(setf (get autolab_core::RigidTransformPublisherResponse :definition-)
      "float64 x_trans
float64 y_trans
float64 z_trans
float64 w_rot
float64 x_rot
float64 y_rot
float64 z_rot
string from_frame
string to_frame
string mode
---
")



(provide :autolab_core/RigidTransformPublisher "2414e9e80f6a0faf446e445b137fbf6c")


