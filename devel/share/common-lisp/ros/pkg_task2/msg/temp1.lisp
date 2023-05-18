; Auto-generated. Do not edit!


(cl:in-package pkg_task2-msg)


;//! \htmlinclude temp1.msg.html

(cl:defclass <temp1> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:string
    :initform "")
   (b
    :reader b
    :initarg :b
    :type cl:string
    :initform ""))
)

(cl:defclass temp1 (<temp1>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <temp1>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'temp1)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pkg_task2-msg:<temp1> is deprecated: use pkg_task2-msg:temp1 instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <temp1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_task2-msg:a-val is deprecated.  Use pkg_task2-msg:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <temp1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pkg_task2-msg:b-val is deprecated.  Use pkg_task2-msg:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <temp1>) ostream)
  "Serializes a message object of type '<temp1>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'a))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'b))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <temp1>) istream)
  "Deserializes a message object of type '<temp1>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'a) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<temp1>)))
  "Returns string type for a message object of type '<temp1>"
  "pkg_task2/temp1")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'temp1)))
  "Returns string type for a message object of type 'temp1"
  "pkg_task2/temp1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<temp1>)))
  "Returns md5sum for a message object of type '<temp1>"
  "efc98bdd092d58ce0c705b4bd69d178c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'temp1)))
  "Returns md5sum for a message object of type 'temp1"
  "efc98bdd092d58ce0c705b4bd69d178c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<temp1>)))
  "Returns full string definition for message of type '<temp1>"
  (cl:format cl:nil "string a~%string b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'temp1)))
  "Returns full string definition for message of type 'temp1"
  (cl:format cl:nil "string a~%string b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <temp1>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'a))
     4 (cl:length (cl:slot-value msg 'b))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <temp1>))
  "Converts a ROS message object to a list"
  (cl:list 'temp1
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
