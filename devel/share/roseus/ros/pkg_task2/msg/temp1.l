;; Auto-generated. Do not edit!


(when (boundp 'pkg_task2::temp1)
  (if (not (find-package "PKG_TASK2"))
    (make-package "PKG_TASK2"))
  (shadow 'temp1 (find-package "PKG_TASK2")))
(unless (find-package "PKG_TASK2::TEMP1")
  (make-package "PKG_TASK2::TEMP1"))

(in-package "ROS")
;;//! \htmlinclude temp1.msg.html


(defclass pkg_task2::temp1
  :super ros::object
  :slots (_a _b ))

(defmethod pkg_task2::temp1
  (:init
   (&key
    ((:a __a) "")
    ((:b __b) "")
    )
   (send-super :init)
   (setq _a (string __a))
   (setq _b (string __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; string _a
    4 (length _a)
    ;; string _b
    4 (length _b)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _a
       (write-long (length _a) s) (princ _a s)
     ;; string _b
       (write-long (length _b) s) (princ _b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _a
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _a (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _b
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _b (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pkg_task2::temp1 :md5sum-) "efc98bdd092d58ce0c705b4bd69d178c")
(setf (get pkg_task2::temp1 :datatype-) "pkg_task2/temp1")
(setf (get pkg_task2::temp1 :definition-)
      "string a
string b

")



(provide :pkg_task2/temp1 "efc98bdd092d58ce0c705b4bd69d178c")


