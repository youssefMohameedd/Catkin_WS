; Auto-generated. Do not edit!


(cl:in-package first-srv)


;//! \htmlinclude Birthday-request.msg.html

(cl:defclass <Birthday-request> (roslisp-msg-protocol:ros-message)
  ((age
    :reader age
    :initarg :age
    :type cl:integer
    :initform 0))
)

(cl:defclass Birthday-request (<Birthday-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Birthday-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Birthday-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name first-srv:<Birthday-request> is deprecated: use first-srv:Birthday-request instead.")))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <Birthday-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader first-srv:age-val is deprecated.  Use first-srv:age instead.")
  (age m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Birthday-request>) ostream)
  "Serializes a message object of type '<Birthday-request>"
  (cl:let* ((signed (cl:slot-value msg 'age)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Birthday-request>) istream)
  "Deserializes a message object of type '<Birthday-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'age) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Birthday-request>)))
  "Returns string type for a service object of type '<Birthday-request>"
  "first/BirthdayRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Birthday-request)))
  "Returns string type for a service object of type 'Birthday-request"
  "first/BirthdayRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Birthday-request>)))
  "Returns md5sum for a message object of type '<Birthday-request>"
  "10865812b40adf763ff24279c924d0fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Birthday-request)))
  "Returns md5sum for a message object of type 'Birthday-request"
  "10865812b40adf763ff24279c924d0fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Birthday-request>)))
  "Returns full string definition for message of type '<Birthday-request>"
  (cl:format cl:nil "int64 age~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Birthday-request)))
  "Returns full string definition for message of type 'Birthday-request"
  (cl:format cl:nil "int64 age~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Birthday-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Birthday-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Birthday-request
    (cl:cons ':age (age msg))
))
;//! \htmlinclude Birthday-response.msg.html

(cl:defclass <Birthday-response> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass Birthday-response (<Birthday-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Birthday-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Birthday-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name first-srv:<Birthday-response> is deprecated: use first-srv:Birthday-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Birthday-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader first-srv:message-val is deprecated.  Use first-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Birthday-response>) ostream)
  "Serializes a message object of type '<Birthday-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Birthday-response>) istream)
  "Deserializes a message object of type '<Birthday-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Birthday-response>)))
  "Returns string type for a service object of type '<Birthday-response>"
  "first/BirthdayResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Birthday-response)))
  "Returns string type for a service object of type 'Birthday-response"
  "first/BirthdayResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Birthday-response>)))
  "Returns md5sum for a message object of type '<Birthday-response>"
  "10865812b40adf763ff24279c924d0fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Birthday-response)))
  "Returns md5sum for a message object of type 'Birthday-response"
  "10865812b40adf763ff24279c924d0fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Birthday-response>)))
  "Returns full string definition for message of type '<Birthday-response>"
  (cl:format cl:nil "string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Birthday-response)))
  "Returns full string definition for message of type 'Birthday-response"
  (cl:format cl:nil "string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Birthday-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Birthday-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Birthday-response
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Birthday)))
  'Birthday-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Birthday)))
  'Birthday-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Birthday)))
  "Returns string type for a service object of type '<Birthday>"
  "first/Birthday")