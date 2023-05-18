; Auto-generated. Do not edit!


(cl:in-package pkg_task2-msg)


;//! \htmlinclude temp2.msg.html

(cl:defclass <temp2> (roslisp-msg-protocol:ros-message)
  ((b
    :reader b
    :initarg :b
    :type cl:string
    :initform ""))
)

(cl:defclass temp2 (<temp2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <temp2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'temp2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pkg_task2-msg:<temp2> is deprecated: use pkg_task2-msg:temp2 instead.")))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <temp2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_task2-msg:b-val is deprecated.  Use pkg_task2-msg:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <temp2>) ostream)
  "Serializes a message object of type '<temp2>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'b))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <temp2>) istream)
  "Deserializes a message object of type '<temp2>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'b) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<temp2>)))
  "Returns string type for a message object of type '<temp2>"
  "pkg_task2/temp2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'temp2)))
  "Returns string type for a message object of type 'temp2"
  "pkg_task2/temp2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<temp2>)))
  "Returns md5sum for a message object of type '<temp2>"
  "7ce4159d4691541e9099927d38b0b65f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'temp2)))
  "Returns md5sum for a message object of type 'temp2"
  "7ce4159d4691541e9099927d38b0b65f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<temp2>)))
  "Returns full string definition for message of type '<temp2>"
  (cl:format cl:nil "string b~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'temp2)))
  "Returns full string definition for message of type 'temp2"
  (cl:format cl:nil "string b~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <temp2>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'b))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <temp2>))
  "Converts a ROS message object to a list"
  (cl:list 'temp2
    (cl:cons ':b (b msg))
))
