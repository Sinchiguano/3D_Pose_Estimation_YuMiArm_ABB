; Auto-generated. Do not edit!


(cl:in-package autolab_core-srv)


;//! \htmlinclude RigidTransformListener-request.msg.html

(cl:defclass <RigidTransformListener-request> (roslisp-msg-protocol:ros-message)
  ((from_frame
    :reader from_frame
    :initarg :from_frame
    :type cl:string
    :initform "")
   (to_frame
    :reader to_frame
    :initarg :to_frame
    :type cl:string
    :initform ""))
)

(cl:defclass RigidTransformListener-request (<RigidTransformListener-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RigidTransformListener-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RigidTransformListener-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autolab_core-srv:<RigidTransformListener-request> is deprecated: use autolab_core-srv:RigidTransformListener-request instead.")))

(cl:ensure-generic-function 'from_frame-val :lambda-list '(m))
(cl:defmethod from_frame-val ((m <RigidTransformListener-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autolab_core-srv:from_frame-val is deprecated.  Use autolab_core-srv:from_frame instead.")
  (from_frame m))

(cl:ensure-generic-function 'to_frame-val :lambda-list '(m))
(cl:defmethod to_frame-val ((m <RigidTransformListener-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autolab_core-srv:to_frame-val is deprecated.  Use autolab_core-srv:to_frame instead.")
  (to_frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RigidTransformListener-request>) ostream)
  "Serializes a message object of type '<RigidTransformListener-request>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RigidTransformListener-request>) istream)
  "Deserializes a message object of type '<RigidTransformListener-request>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RigidTransformListener-request>)))
  "Returns string type for a service object of type '<RigidTransformListener-request>"
  "autolab_core/RigidTransformListenerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RigidTransformListener-request)))
  "Returns string type for a service object of type 'RigidTransformListener-request"
  "autolab_core/RigidTransformListenerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RigidTransformListener-request>)))
  "Returns md5sum for a message object of type '<RigidTransformListener-request>"
  "1b358ad3ddaa046f03b607401db493d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RigidTransformListener-request)))
  "Returns md5sum for a message object of type 'RigidTransformListener-request"
  "1b358ad3ddaa046f03b607401db493d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RigidTransformListener-request>)))
  "Returns full string definition for message of type '<RigidTransformListener-request>"
  (cl:format cl:nil "string from_frame~%string to_frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RigidTransformListener-request)))
  "Returns full string definition for message of type 'RigidTransformListener-request"
  (cl:format cl:nil "string from_frame~%string to_frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RigidTransformListener-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'from_frame))
     4 (cl:length (cl:slot-value msg 'to_frame))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RigidTransformListener-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RigidTransformListener-request
    (cl:cons ':from_frame (from_frame msg))
    (cl:cons ':to_frame (to_frame msg))
))
;//! \htmlinclude RigidTransformListener-response.msg.html

(cl:defclass <RigidTransformListener-response> (roslisp-msg-protocol:ros-message)
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
    :initform 0.0))
)

(cl:defclass RigidTransformListener-response (<RigidTransformListener-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RigidTransformListener-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RigidTransformListener-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autolab_core-srv:<RigidTransformListener-response> is deprecated: use autolab_core-srv:RigidTransformListener-response instead.")))

(cl:ensure-generic-function 'x_trans-val :lambda-list '(m))
(cl:defmethod x_trans-val ((m <RigidTransformListener-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autolab_core-srv:x_trans-val is deprecated.  Use autolab_core-srv:x_trans instead.")
  (x_trans m))

(cl:ensure-generic-function 'y_trans-val :lambda-list '(m))
(cl:defmethod y_trans-val ((m <RigidTransformListener-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autolab_core-srv:y_trans-val is deprecated.  Use autolab_core-srv:y_trans instead.")
  (y_trans m))

(cl:ensure-generic-function 'z_trans-val :lambda-list '(m))
(cl:defmethod z_trans-val ((m <RigidTransformListener-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autolab_core-srv:z_trans-val is deprecated.  Use autolab_core-srv:z_trans instead.")
  (z_trans m))

(cl:ensure-generic-function 'w_rot-val :lambda-list '(m))
(cl:defmethod w_rot-val ((m <RigidTransformListener-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autolab_core-srv:w_rot-val is deprecated.  Use autolab_core-srv:w_rot instead.")
  (w_rot m))

(cl:ensure-generic-function 'x_rot-val :lambda-list '(m))
(cl:defmethod x_rot-val ((m <RigidTransformListener-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autolab_core-srv:x_rot-val is deprecated.  Use autolab_core-srv:x_rot instead.")
  (x_rot m))

(cl:ensure-generic-function 'y_rot-val :lambda-list '(m))
(cl:defmethod y_rot-val ((m <RigidTransformListener-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autolab_core-srv:y_rot-val is deprecated.  Use autolab_core-srv:y_rot instead.")
  (y_rot m))

(cl:ensure-generic-function 'z_rot-val :lambda-list '(m))
(cl:defmethod z_rot-val ((m <RigidTransformListener-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autolab_core-srv:z_rot-val is deprecated.  Use autolab_core-srv:z_rot instead.")
  (z_rot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RigidTransformListener-response>) ostream)
  "Serializes a message object of type '<RigidTransformListener-response>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RigidTransformListener-response>) istream)
  "Deserializes a message object of type '<RigidTransformListener-response>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RigidTransformListener-response>)))
  "Returns string type for a service object of type '<RigidTransformListener-response>"
  "autolab_core/RigidTransformListenerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RigidTransformListener-response)))
  "Returns string type for a service object of type 'RigidTransformListener-response"
  "autolab_core/RigidTransformListenerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RigidTransformListener-response>)))
  "Returns md5sum for a message object of type '<RigidTransformListener-response>"
  "1b358ad3ddaa046f03b607401db493d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RigidTransformListener-response)))
  "Returns md5sum for a message object of type 'RigidTransformListener-response"
  "1b358ad3ddaa046f03b607401db493d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RigidTransformListener-response>)))
  "Returns full string definition for message of type '<RigidTransformListener-response>"
  (cl:format cl:nil "float64 x_trans~%float64 y_trans~%float64 z_trans~%float64 w_rot~%float64 x_rot~%float64 y_rot~%float64 z_rot~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RigidTransformListener-response)))
  "Returns full string definition for message of type 'RigidTransformListener-response"
  (cl:format cl:nil "float64 x_trans~%float64 y_trans~%float64 z_trans~%float64 w_rot~%float64 x_rot~%float64 y_rot~%float64 z_rot~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RigidTransformListener-response>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RigidTransformListener-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RigidTransformListener-response
    (cl:cons ':x_trans (x_trans msg))
    (cl:cons ':y_trans (y_trans msg))
    (cl:cons ':z_trans (z_trans msg))
    (cl:cons ':w_rot (w_rot msg))
    (cl:cons ':x_rot (x_rot msg))
    (cl:cons ':y_rot (y_rot msg))
    (cl:cons ':z_rot (z_rot msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RigidTransformListener)))
  'RigidTransformListener-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RigidTransformListener)))
  'RigidTransformListener-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RigidTransformListener)))
  "Returns string type for a service object of type '<RigidTransformListener>"
  "autolab_core/RigidTransformListener")