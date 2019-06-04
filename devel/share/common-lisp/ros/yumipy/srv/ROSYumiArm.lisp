; Auto-generated. Do not edit!


(cl:in-package yumipy-srv)


;//! \htmlinclude ROSYumiArm-request.msg.html

(cl:defclass <ROSYumiArm-request> (roslisp-msg-protocol:ros-message)
  ((func
    :reader func
    :initarg :func
    :type cl:string
    :initform "")
   (args
    :reader args
    :initarg :args
    :type cl:string
    :initform "")
   (kwargs
    :reader kwargs
    :initarg :kwargs
    :type cl:string
    :initform ""))
)

(cl:defclass ROSYumiArm-request (<ROSYumiArm-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ROSYumiArm-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ROSYumiArm-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yumipy-srv:<ROSYumiArm-request> is deprecated: use yumipy-srv:ROSYumiArm-request instead.")))

(cl:ensure-generic-function 'func-val :lambda-list '(m))
(cl:defmethod func-val ((m <ROSYumiArm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yumipy-srv:func-val is deprecated.  Use yumipy-srv:func instead.")
  (func m))

(cl:ensure-generic-function 'args-val :lambda-list '(m))
(cl:defmethod args-val ((m <ROSYumiArm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yumipy-srv:args-val is deprecated.  Use yumipy-srv:args instead.")
  (args m))

(cl:ensure-generic-function 'kwargs-val :lambda-list '(m))
(cl:defmethod kwargs-val ((m <ROSYumiArm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yumipy-srv:kwargs-val is deprecated.  Use yumipy-srv:kwargs instead.")
  (kwargs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ROSYumiArm-request>) ostream)
  "Serializes a message object of type '<ROSYumiArm-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'func))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'func))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'args))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'args))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'kwargs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'kwargs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ROSYumiArm-request>) istream)
  "Deserializes a message object of type '<ROSYumiArm-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'func) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'func) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'args) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'args) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kwargs) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'kwargs) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ROSYumiArm-request>)))
  "Returns string type for a service object of type '<ROSYumiArm-request>"
  "yumipy/ROSYumiArmRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ROSYumiArm-request)))
  "Returns string type for a service object of type 'ROSYumiArm-request"
  "yumipy/ROSYumiArmRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ROSYumiArm-request>)))
  "Returns md5sum for a message object of type '<ROSYumiArm-request>"
  "a5f31b322bc70c99cdf226b9d88321e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ROSYumiArm-request)))
  "Returns md5sum for a message object of type 'ROSYumiArm-request"
  "a5f31b322bc70c99cdf226b9d88321e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ROSYumiArm-request>)))
  "Returns full string definition for message of type '<ROSYumiArm-request>"
  (cl:format cl:nil "string func~%string args~%string kwargs~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ROSYumiArm-request)))
  "Returns full string definition for message of type 'ROSYumiArm-request"
  (cl:format cl:nil "string func~%string args~%string kwargs~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ROSYumiArm-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'func))
     4 (cl:length (cl:slot-value msg 'args))
     4 (cl:length (cl:slot-value msg 'kwargs))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ROSYumiArm-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ROSYumiArm-request
    (cl:cons ':func (func msg))
    (cl:cons ':args (args msg))
    (cl:cons ':kwargs (kwargs msg))
))
;//! \htmlinclude ROSYumiArm-response.msg.html

(cl:defclass <ROSYumiArm-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:string
    :initform ""))
)

(cl:defclass ROSYumiArm-response (<ROSYumiArm-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ROSYumiArm-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ROSYumiArm-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yumipy-srv:<ROSYumiArm-response> is deprecated: use yumipy-srv:ROSYumiArm-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <ROSYumiArm-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yumipy-srv:ret-val is deprecated.  Use yumipy-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ROSYumiArm-response>) ostream)
  "Serializes a message object of type '<ROSYumiArm-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ret))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ret))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ROSYumiArm-response>) istream)
  "Deserializes a message object of type '<ROSYumiArm-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ret) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ret) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ROSYumiArm-response>)))
  "Returns string type for a service object of type '<ROSYumiArm-response>"
  "yumipy/ROSYumiArmResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ROSYumiArm-response)))
  "Returns string type for a service object of type 'ROSYumiArm-response"
  "yumipy/ROSYumiArmResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ROSYumiArm-response>)))
  "Returns md5sum for a message object of type '<ROSYumiArm-response>"
  "a5f31b322bc70c99cdf226b9d88321e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ROSYumiArm-response)))
  "Returns md5sum for a message object of type 'ROSYumiArm-response"
  "a5f31b322bc70c99cdf226b9d88321e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ROSYumiArm-response>)))
  "Returns full string definition for message of type '<ROSYumiArm-response>"
  (cl:format cl:nil "string ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ROSYumiArm-response)))
  "Returns full string definition for message of type 'ROSYumiArm-response"
  (cl:format cl:nil "string ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ROSYumiArm-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ret))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ROSYumiArm-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ROSYumiArm-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ROSYumiArm)))
  'ROSYumiArm-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ROSYumiArm)))
  'ROSYumiArm-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ROSYumiArm)))
  "Returns string type for a service object of type '<ROSYumiArm>"
  "yumipy/ROSYumiArm")