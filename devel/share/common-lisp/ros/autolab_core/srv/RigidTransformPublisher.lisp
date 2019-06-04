; Auto-generated. Do not edit!


(cl:in-package autolab_core-srv)


;//! \htmlinclude RigidTransformPublisher-request.msg.html

(cl:defclass <RigidTransformPublisher-request> (roslisp-msg-protocol:ros-message)
  ((x_trans
    :reader x_trans
    :initarg :x_trans
    :type cl:float
    :initform 0.0)
   (y_trans
    :reader y_trans
    :initarg :y_trans
    :type cl:float
    :initform 0.0)
   (z_trans
    :reader z_trans
    :initarg :z_trans
    :type cl:float
    :initform 0.0)
   (w_rot
    :reader w_rot
    :initarg :w_rot
    :type cl:float
    :initform 0.0)
   (x_rot
    :reader x_rot
    :initarg :x_rot
    :type cl:float
    :initform 0.0)
   (y_rot
    :reader y_rot
    :initarg :y_rot
    :type cl:float
    :initform 0.0)
   (z_rot
    :reader z_rot
    :initarg :z_rot
    :type cl:float
    :initform 0.0)
   (from_frame
    :reader from_frame
    :initarg :from_frame
    :type cl:string
    :initform "")
   (to_frame
    :reader to_frame
    :initarg :to_frame
    :type cl:string
    :initform "")
   (mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform ""))
)

(cl:defclass RigidTransformPublisher-request (<RigidTransformPublisher-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RigidTransformPublisher-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RigidTransformPublisher-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autolab_core-srv:<RigidTransformPublisher-request> is deprecated: use autolab_core-srv:RigidTransformPublisher-request instead.")))

(cl:ensure-generic-function 'x_trans-val :lambda-list '(m))
(cl:defmethod x_trans-val ((m <RigidTransformPublisher-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autolab_core-srv:x_trans-val is deprecated.  Use autolab_core-srv:x_trans instead.")
  (x_trans m))

(cl:ensure-generic-function 'y_trans-val :lambda-list '(m))
(cl:defmethod y_trans-val ((m <RigidTransformPublisher-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autolab_core-srv:y_trans-val is deprecated.  Use autolab_core-srv:y_trans instead.")
  (y_trans m))

(cl:ensure-generic-function 'z_trans-val :lambda-list '(m))
(cl:defmethod z_trans-val ((m <RigidTransformPublisher-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autolab_core-srv:z_trans-val is deprecated.  Use autolab_core-srv:z_trans instead.")
  (z_trans m))

(cl:ensure-generic-function 'w_rot-val :lambda-list '(m))
(cl:defmethod w_rot-val ((m <RigidTransformPublisher-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autolab_core-srv:w_rot-val is deprecated.  Use autolab_core-srv:w_rot instead.")
  (w_rot m))

(cl:ensure-generic-function 'x_rot-val :lambda-list '(m))
(cl:defmethod x_rot-val ((m <RigidTransformPublisher-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autolab_core-srv:x_rot-val is deprecated.  Use autolab_core-srv:x_rot instead.")
  (x_rot m))

(cl:ensure-generic-function 'y_rot-val :lambda-list '(m))
(cl:defmethod y_rot-val ((m <RigidTransformPublisher-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autolab_core-srv:y_rot-val is deprecated.  Use autolab_core-srv:y_rot instead.")
  (y_rot m))

(cl:ensure-generic-function 'z_rot-val :lambda-list '(m))
(cl:defmethod z_rot-val ((m <RigidTransformPublisher-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autolab_core-srv:z_rot-val is deprecated.  Use autolab_core-srv:z_rot instead.")
  (z_rot m))

(cl:ensure-generic-function 'from_frame-val :lambda-list '(m))
(cl:defmethod from_frame-val ((m <RigidTransformPublisher-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autolab_core-srv:from_frame-val is deprecated.  Use autolab_core-srv:from_frame instead.")
  (from_frame m))

(cl:ensure-generic-function 'to_frame-val :lambda-list '(m))
(cl:defmethod to_frame-val ((m <RigidTransformPublisher-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autolab_core-srv:to_frame-val is deprecated.  Use autolab_core-srv:to_frame instead.")
  (to_frame m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <RigidTransformPublisher-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autolab_core-srv:mode-val is deprecated.  Use autolab_core-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RigidTransformPublisher-request>) ostream)
  "Serializes a message object of type '<RigidTransformPublisher-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x_trans))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y_trans))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z_trans))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'w_rot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x_rot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y_rot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z_rot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'from_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'from_frame))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'to_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'to_frame))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RigidTransformPublisher-request>) istream)
  "Deserializes a message object of type '<RigidTransformPublisher-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_trans) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_trans) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z_trans) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w_rot) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_rot) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_rot) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z_rot) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'from_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'from_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'to_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'to_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RigidTransformPublisher-request>)))
  "Returns string type for a service object of type '<RigidTransformPublisher-request>"
  "autolab_core/RigidTransformPublisherRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RigidTransformPublisher-request)))
  "Returns string type for a service object of type 'RigidTransformPublisher-request"
  "autolab_core/RigidTransformPublisherRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RigidTransformPublisher-request>)))
  "Returns md5sum for a message object of type '<RigidTransformPublisher-request>"
  "2414e9e80f6a0faf446e445b137fbf6c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RigidTransformPublisher-request)))
  "Returns md5sum for a message object of type 'RigidTransformPublisher-request"
  "2414e9e80f6a0faf446e445b137fbf6c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RigidTransformPublisher-request>)))
  "Returns full string definition for message of type '<RigidTransformPublisher-request>"
  (cl:format cl:nil "float64 x_trans~%float64 y_trans~%float64 z_trans~%float64 w_rot~%float64 x_rot~%float64 y_rot~%float64 z_rot~%string from_frame~%string to_frame~%string mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RigidTransformPublisher-request)))
  "Returns full string definition for message of type 'RigidTransformPublisher-request"
  (cl:format cl:nil "float64 x_trans~%float64 y_trans~%float64 z_trans~%float64 w_rot~%float64 x_rot~%float64 y_rot~%float64 z_rot~%string from_frame~%string to_frame~%string mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RigidTransformPublisher-request>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     8
     4 (cl:length (cl:slot-value msg 'from_frame))
     4 (cl:length (cl:slot-value msg 'to_frame))
     4 (cl:length (cl:slot-value msg 'mode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RigidTransformPublisher-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RigidTransformPublisher-request
    (cl:cons ':x_trans (x_trans msg))
    (cl:cons ':y_trans (y_trans msg))
    (cl:cons ':z_trans (z_trans msg))
    (cl:cons ':w_rot (w_rot msg))
    (cl:cons ':x_rot (x_rot msg))
    (cl:cons ':y_rot (y_rot msg))
    (cl:cons ':z_rot (z_rot msg))
    (cl:cons ':from_frame (from_frame msg))
    (cl:cons ':to_frame (to_frame msg))
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude RigidTransformPublisher-response.msg.html

(cl:defclass <RigidTransformPublisher-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RigidTransformPublisher-response (<RigidTransformPublisher-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RigidTransformPublisher-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RigidTransformPublisher-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autolab_core-srv:<RigidTransformPublisher-response> is deprecated: use autolab_core-srv:RigidTransformPublisher-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RigidTransformPublisher-response>) ostream)
  "Serializes a message object of type '<RigidTransformPublisher-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RigidTransformPublisher-response>) istream)
  "Deserializes a message object of type '<RigidTransformPublisher-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RigidTransformPublisher-response>)))
  "Returns string type for a service object of type '<RigidTransformPublisher-response>"
  "autolab_core/RigidTransformPublisherResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RigidTransformPublisher-response)))
  "Returns string type for a service object of type 'RigidTransformPublisher-response"
  "autolab_core/RigidTransformPublisherResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RigidTransformPublisher-response>)))
  "Returns md5sum for a message object of type '<RigidTransformPublisher-response>"
  "2414e9e80f6a0faf446e445b137fbf6c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RigidTransformPublisher-response)))
  "Returns md5sum for a message object of type 'RigidTransformPublisher-response"
  "2414e9e80f6a0faf446e445b137fbf6c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RigidTransformPublisher-response>)))
  "Returns full string definition for message of type '<RigidTransformPublisher-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RigidTransformPublisher-response)))
  "Returns full string definition for message of type 'RigidTransformPublisher-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RigidTransformPublisher-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RigidTransformPublisher-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RigidTransformPublisher-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RigidTransformPublisher)))
  'RigidTransformPublisher-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RigidTransformPublisher)))
  'RigidTransformPublisher-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RigidTransformPublisher)))
  "Returns string type for a service object of type '<RigidTransformPublisher>"
  "autolab_core/RigidTransformPublisher")