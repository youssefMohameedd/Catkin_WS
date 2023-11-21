; Auto-generated. Do not edit!


(cl:in-package first-msg)


;//! \htmlinclude Months.msg.html

(cl:defclass <Months> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (number
    :reader number
    :initarg :number
    :type cl:integer
    :initform 0))
)

(cl:defclass Months (<Months>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Months>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Months)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name first-msg:<Months> is deprecated: use first-msg:Months instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Months>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader first-msg:name-val is deprecated.  Use first-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <Months>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader first-msg:number-val is deprecated.  Use first-msg:number instead.")
  (number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Months>) ostream)
  "Serializes a message object of type '<Months>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Months>) istream)
  "Deserializes a message object of type '<Months>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Months>)))
  "Returns string type for a message object of type '<Months>"
  "first/Months")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Months)))
  "Returns string type for a message object of type 'Months"
  "first/Months")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Months>)))
  "Returns md5sum for a message object of type '<Months>"
  "2b4c0f13b3f4a45ae2d788a4843c5f00")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Months)))
  "Returns md5sum for a message object of type 'Months"
  "2b4c0f13b3f4a45ae2d788a4843c5f00")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Months>)))
  "Returns full string definition for message of type '<Months>"
  (cl:format cl:nil "string name~%int64 number~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Months)))
  "Returns full string definition for message of type 'Months"
  (cl:format cl:nil "string name~%int64 number~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Months>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Months>))
  "Converts a ROS message object to a list"
  (cl:list 'Months
    (cl:cons ':name (name msg))
    (cl:cons ':number (number msg))
))
