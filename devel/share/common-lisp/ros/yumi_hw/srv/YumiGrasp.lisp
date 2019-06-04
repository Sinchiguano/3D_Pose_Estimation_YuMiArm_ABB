; Auto-generated. Do not edit!


(cl:in-package yumi_hw-srv)


;//! \htmlinclude YumiGrasp-request.msg.html

(cl:defclass <YumiGrasp-request> (roslisp-msg-protocol:ros-message)
  ((gripper_id
    :reader gripper_id
    :initarg :gripper_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass YumiGrasp-request (<YumiGrasp-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YumiGrasp-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YumiGrasp-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yumi_hw-srv:<YumiGrasp-request> is deprecated: use yumi_hw-srv:YumiGrasp-request instead.")))

(cl:ensure-generic-function 'gripper_id-val :lambda-list '(m))
(cl:defmethod gripper_id-val ((m <YumiGrasp-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yumi_hw-srv:gripper_id-val is deprecated.  Use yumi_hw-srv:gripper_id instead.")
  (gripper_id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<YumiGrasp-request>)))
    "Constants for message type '<YumiGrasp-request>"
  '((:LEFT_GRIPPER . 1)
    (:RIGHT_GRIPPER . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'YumiGrasp-request)))
    "Constants for message type 'YumiGrasp-request"
  '((:LEFT_GRIPPER . 1)
    (:RIGHT_GRIPPER . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YumiGrasp-request>) ostream)
  "Serializes a message object of type '<YumiGrasp-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gripper_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gripper_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YumiGrasp-request>) istream)
  "Deserializes a message object of type '<YumiGrasp-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gripper_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gripper_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YumiGrasp-request>)))
  "Returns string type for a service object of type '<YumiGrasp-request>"
  "yumi_hw/YumiGraspRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YumiGrasp-request)))
  "Returns string type for a service object of type 'YumiGrasp-request"
  "yumi_hw/YumiGraspRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YumiGrasp-request>)))
  "Returns md5sum for a message object of type '<YumiGrasp-request>"
  "26ac3d04102c2e5c0d5e4e1367d0349b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YumiGrasp-request)))
  "Returns md5sum for a message object of type 'YumiGrasp-request"
  "26ac3d04102c2e5c0d5e4e1367d0349b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YumiGrasp-request>)))
  "Returns full string definition for message of type '<YumiGrasp-request>"
  (cl:format cl:nil "uint16 LEFT_GRIPPER=1~%uint16 RIGHT_GRIPPER=2~%~%uint16 gripper_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YumiGrasp-request)))
  "Returns full string definition for message of type 'YumiGrasp-request"
  (cl:format cl:nil "uint16 LEFT_GRIPPER=1~%uint16 RIGHT_GRIPPER=2~%~%uint16 gripper_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YumiGrasp-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YumiGrasp-request>))
  "Converts a ROS message object to a list"
  (cl:list 'YumiGrasp-request
    (cl:cons ':gripper_id (gripper_id msg))
))
;//! \htmlinclude YumiGrasp-response.msg.html

(cl:defclass <YumiGrasp-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass YumiGrasp-response (<YumiGrasp-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YumiGrasp-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YumiGrasp-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yumi_hw-srv:<YumiGrasp-response> is deprecated: use yumi_hw-srv:YumiGrasp-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YumiGrasp-response>) ostream)
  "Serializes a message object of type '<YumiGrasp-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YumiGrasp-response>) istream)
  "Deserializes a message object of type '<YumiGrasp-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YumiGrasp-response>)))
  "Returns string type for a service object of type '<YumiGrasp-response>"
  "yumi_hw/YumiGraspResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YumiGrasp-response)))
  "Returns string type for a service object of type 'YumiGrasp-response"
  "yumi_hw/YumiGraspResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YumiGrasp-response>)))
  "Returns md5sum for a message object of type '<YumiGrasp-response>"
  "26ac3d04102c2e5c0d5e4e1367d0349b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YumiGrasp-response)))
  "Returns md5sum for a message object of type 'YumiGrasp-response"
  "26ac3d04102c2e5c0d5e4e1367d0349b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YumiGrasp-response>)))
  "Returns full string definition for message of type '<YumiGrasp-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YumiGrasp-response)))
  "Returns full string definition for message of type 'YumiGrasp-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YumiGrasp-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YumiGrasp-response>))
  "Converts a ROS message object to a list"
  (cl:list 'YumiGrasp-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'YumiGrasp)))
  'YumiGrasp-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'YumiGrasp)))
  'YumiGrasp-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YumiGrasp)))
  "Returns string type for a service object of type '<YumiGrasp>"
  "yumi_hw/YumiGrasp")