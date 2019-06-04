; Auto-generated. Do not edit!


(cl:in-package ddynamic_reconfigure-srv)


;//! \htmlinclude TutorialParams-request.msg.html

(cl:defclass <TutorialParams-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TutorialParams-request (<TutorialParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TutorialParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TutorialParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ddynamic_reconfigure-srv:<TutorialParams-request> is deprecated: use ddynamic_reconfigure-srv:TutorialParams-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TutorialParams-request>) ostream)
  "Serializes a message object of type '<TutorialParams-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TutorialParams-request>) istream)
  "Deserializes a message object of type '<TutorialParams-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TutorialParams-request>)))
  "Returns string type for a service object of type '<TutorialParams-request>"
  "ddynamic_reconfigure/TutorialParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TutorialParams-request)))
  "Returns string type for a service object of type 'TutorialParams-request"
  "ddynamic_reconfigure/TutorialParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TutorialParams-request>)))
  "Returns md5sum for a message object of type '<TutorialParams-request>"
  "2b2d98973833896677e387258d00296b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TutorialParams-request)))
  "Returns md5sum for a message object of type 'TutorialParams-request"
  "2b2d98973833896677e387258d00296b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TutorialParams-request>)))
  "Returns full string definition for message of type '<TutorialParams-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TutorialParams-request)))
  "Returns full string definition for message of type 'TutorialParams-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TutorialParams-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TutorialParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TutorialParams-request
))
;//! \htmlinclude TutorialParams-response.msg.html

(cl:defclass <TutorialParams-response> (roslisp-msg-protocol:ros-message)
  ((int_param
    :reader int_param
    :initarg :int_param
    :type cl:integer
    :initform 0)
   (double_param
    :reader double_param
    :initarg :double_param
    :type cl:float
    :initform 0.0)
   (str_param
    :reader str_param
    :initarg :str_param
    :type cl:string
    :initform "")
   (bool_param
    :reader bool_param
    :initarg :bool_param
    :type cl:boolean
    :initform cl:nil)
   (enum_param
    :reader enum_param
    :initarg :enum_param
    :type cl:integer
    :initform 0))
)

(cl:defclass TutorialParams-response (<TutorialParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TutorialParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TutorialParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ddynamic_reconfigure-srv:<TutorialParams-response> is deprecated: use ddynamic_reconfigure-srv:TutorialParams-response instead.")))

(cl:ensure-generic-function 'int_param-val :lambda-list '(m))
(cl:defmethod int_param-val ((m <TutorialParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ddynamic_reconfigure-srv:int_param-val is deprecated.  Use ddynamic_reconfigure-srv:int_param instead.")
  (int_param m))

(cl:ensure-generic-function 'double_param-val :lambda-list '(m))
(cl:defmethod double_param-val ((m <TutorialParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ddynamic_reconfigure-srv:double_param-val is deprecated.  Use ddynamic_reconfigure-srv:double_param instead.")
  (double_param m))

(cl:ensure-generic-function 'str_param-val :lambda-list '(m))
(cl:defmethod str_param-val ((m <TutorialParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ddynamic_reconfigure-srv:str_param-val is deprecated.  Use ddynamic_reconfigure-srv:str_param instead.")
  (str_param m))

(cl:ensure-generic-function 'bool_param-val :lambda-list '(m))
(cl:defmethod bool_param-val ((m <TutorialParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ddynamic_reconfigure-srv:bool_param-val is deprecated.  Use ddynamic_reconfigure-srv:bool_param instead.")
  (bool_param m))

(cl:ensure-generic-function 'enum_param-val :lambda-list '(m))
(cl:defmethod enum_param-val ((m <TutorialParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ddynamic_reconfigure-srv:enum_param-val is deprecated.  Use ddynamic_reconfigure-srv:enum_param instead.")
  (enum_param m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TutorialParams-response>) ostream)
  "Serializes a message object of type '<TutorialParams-response>"
  (cl:let* ((signed (cl:slot-value msg 'int_param)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'double_param))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'str_param))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'str_param))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bool_param) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'enum_param)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TutorialParams-response>) istream)
  "Deserializes a message object of type '<TutorialParams-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'int_param) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'double_param) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'str_param) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'str_param) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'bool_param) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'enum_param) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TutorialParams-response>)))
  "Returns string type for a service object of type '<TutorialParams-response>"
  "ddynamic_reconfigure/TutorialParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TutorialParams-response)))
  "Returns string type for a service object of type 'TutorialParams-response"
  "ddynamic_reconfigure/TutorialParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TutorialParams-response>)))
  "Returns md5sum for a message object of type '<TutorialParams-response>"
  "2b2d98973833896677e387258d00296b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TutorialParams-response)))
  "Returns md5sum for a message object of type 'TutorialParams-response"
  "2b2d98973833896677e387258d00296b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TutorialParams-response>)))
  "Returns full string definition for message of type '<TutorialParams-response>"
  (cl:format cl:nil "int32 int_param~%float64 double_param~%string str_param~%bool bool_param~%int32 enum_param~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TutorialParams-response)))
  "Returns full string definition for message of type 'TutorialParams-response"
  (cl:format cl:nil "int32 int_param~%float64 double_param~%string str_param~%bool bool_param~%int32 enum_param~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TutorialParams-response>))
  (cl:+ 0
     4
     8
     4 (cl:length (cl:slot-value msg 'str_param))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TutorialParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TutorialParams-response
    (cl:cons ':int_param (int_param msg))
    (cl:cons ':double_param (double_param msg))
    (cl:cons ':str_param (str_param msg))
    (cl:cons ':bool_param (bool_param msg))
    (cl:cons ':enum_param (enum_param msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TutorialParams)))
  'TutorialParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TutorialParams)))
  'TutorialParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TutorialParams)))
  "Returns string type for a service object of type '<TutorialParams>"
  "ddynamic_reconfigure/TutorialParams")