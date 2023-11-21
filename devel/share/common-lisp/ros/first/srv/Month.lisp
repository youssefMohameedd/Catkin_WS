; Auto-generated. Do not edit!


(cl:in-package first-srv)


;//! \htmlinclude Month-request.msg.html

(cl:defclass <Month-request> (roslisp-msg-protocol:ros-message)
  ((Age
    :reader Age
    :initarg :Age
    :type cl:integer
    :initform 0))
)

(cl:defclass Month-request (<Month-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Month-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Month-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name first-srv:<Month-request> is deprecated: use first-srv:Month-request instead.")))

(cl:ensure-generic-function 'Age-val :lambda-list '(m))
(cl:defmethod Age-val ((m <Month-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader first-srv:Age-val is deprecated.  Use first-srv:Age instead.")
  (Age m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Month-request>) ostream)
  "Serializes a message object of type '<Month-request>"
  (cl:let* ((signed (cl:slot-value msg 'Age)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Month-request>) istream)
  "Deserializes a message object of type '<Month-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Age) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Month-request>)))
  "Returns string type for a service object of type '<Month-request>"
  "first/MonthRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Month-request)))
  "Returns string type for a service object of type 'Month-request"
  "first/MonthRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Month-request>)))
  "Returns md5sum for a message object of type '<Month-request>"
  "1278061dd68c53a50ae17a40e29b2734")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Month-request)))
  "Returns md5sum for a message object of type 'Month-request"
  "1278061dd68c53a50ae17a40e29b2734")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Month-request>)))
  "Returns full string definition for message of type '<Month-request>"
  (cl:format cl:nil "int64 Age~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Month-request)))
  "Returns full string definition for message of type 'Month-request"
  (cl:format cl:nil "int64 Age~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Month-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Month-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Month-request
    (cl:cons ':Age (Age msg))
))
;//! \htmlinclude Month-response.msg.html

(cl:defclass <Month-response> (roslisp-msg-protocol:ros-message)
  ((Message
    :reader Message
    :initarg :Message
    :type cl:string
    :initform ""))
)

(cl:defclass Month-response (<Month-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Month-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Month-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name first-srv:<Month-response> is deprecated: use first-srv:Month-response instead.")))

(cl:ensure-generic-function 'Message-val :lambda-list '(m))
(cl:defmethod Message-val ((m <Month-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader first-srv:Message-val is deprecated.  Use first-srv:Message instead.")
  (Message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Month-response>) ostream)
  "Serializes a message object of type '<Month-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Month-response>) istream)
  "Deserializes a message object of type '<Month-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Month-response>)))
  "Returns string type for a service object of type '<Month-response>"
  "first/MonthResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Month-response)))
  "Returns string type for a service object of type 'Month-response"
  "first/MonthResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Month-response>)))
  "Returns md5sum for a message object of type '<Month-response>"
  "1278061dd68c53a50ae17a40e29b2734")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Month-response)))
  "Returns md5sum for a message object of type 'Month-response"
  "1278061dd68c53a50ae17a40e29b2734")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Month-response>)))
  "Returns full string definition for message of type '<Month-response>"
  (cl:format cl:nil "string Message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Month-response)))
  "Returns full string definition for message of type 'Month-response"
  (cl:format cl:nil "string Message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Month-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'Message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Month-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Month-response
    (cl:cons ':Message (Message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Month)))
  'Month-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Month)))
  'Month-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Month)))
  "Returns string type for a service object of type '<Month>"
  "first/Month")