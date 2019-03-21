; Auto-generated. Do not edit!


(cl:in-package my_opencv-msg)


;//! \htmlinclude CalibrationRGB.msg.html

(cl:defclass <CalibrationRGB> (roslisp-msg-protocol:ros-message)
  ((R
    :reader R
    :initarg :R
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (G
    :reader G
    :initarg :G
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (B
    :reader B
    :initarg :B
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass CalibrationRGB (<CalibrationRGB>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalibrationRGB>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalibrationRGB)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_opencv-msg:<CalibrationRGB> is deprecated: use my_opencv-msg:CalibrationRGB instead.")))

(cl:ensure-generic-function 'R-val :lambda-list '(m))
(cl:defmethod R-val ((m <CalibrationRGB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_opencv-msg:R-val is deprecated.  Use my_opencv-msg:R instead.")
  (R m))

(cl:ensure-generic-function 'G-val :lambda-list '(m))
(cl:defmethod G-val ((m <CalibrationRGB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_opencv-msg:G-val is deprecated.  Use my_opencv-msg:G instead.")
  (G m))

(cl:ensure-generic-function 'B-val :lambda-list '(m))
(cl:defmethod B-val ((m <CalibrationRGB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_opencv-msg:B-val is deprecated.  Use my_opencv-msg:B instead.")
  (B m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalibrationRGB>) ostream)
  "Serializes a message object of type '<CalibrationRGB>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'R))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'R))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'G))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'G))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'B))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'B))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalibrationRGB>) istream)
  "Deserializes a message object of type '<CalibrationRGB>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'R) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'R)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'G) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'G)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'B) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'B)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalibrationRGB>)))
  "Returns string type for a message object of type '<CalibrationRGB>"
  "my_opencv/CalibrationRGB")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrationRGB)))
  "Returns string type for a message object of type 'CalibrationRGB"
  "my_opencv/CalibrationRGB")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalibrationRGB>)))
  "Returns md5sum for a message object of type '<CalibrationRGB>"
  "69843753f2755d668ff7558392825518")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalibrationRGB)))
  "Returns md5sum for a message object of type 'CalibrationRGB"
  "69843753f2755d668ff7558392825518")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalibrationRGB>)))
  "Returns full string definition for message of type '<CalibrationRGB>"
  (cl:format cl:nil "uint32[] R~%uint32[] G~%uint32[] B~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalibrationRGB)))
  "Returns full string definition for message of type 'CalibrationRGB"
  (cl:format cl:nil "uint32[] R~%uint32[] G~%uint32[] B~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalibrationRGB>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'R) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'G) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'B) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalibrationRGB>))
  "Converts a ROS message object to a list"
  (cl:list 'CalibrationRGB
    (cl:cons ':R (R msg))
    (cl:cons ':G (G msg))
    (cl:cons ':B (B msg))
))
