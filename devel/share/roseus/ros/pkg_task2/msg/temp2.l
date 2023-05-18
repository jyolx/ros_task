;; Auto-generated. Do not edit!


(when (boundp 'pkg_task2::temp2)
  (if (not (find-package "PKG_TASK2"))
    (make-package "PKG_TASK2"))
  (shadow 'temp2 (find-package "PKG_TASK2")))
(unless (find-package "PKG_TASK2::TEMP2")
  (make-package "PKG_TASK2::TEMP2"))

(in-package "ROS")
;;//! \htmlinclude temp2.msg.html


(defclass pkg_task2::temp2
  :super ros::object
  :slots (_b ))

(defmethod pkg_task2::temp2
  (:init
   (&key
    ((:b __b) "")
    )
   (send-super :init)
   (setq _b (string __b))
   self)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; string _b
    4 (length _b)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _b
       (write-long (length _b) s) (princ _b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _b
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _b (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pkg_task2::temp2 :md5sum-) "7ce4159d4691541e9099927d38b0b65f")
(setf (get pkg_task2::temp2 :datatype-) "pkg_task2/temp2")
(setf (get pkg_task2::temp2 :definition-)
      "string b
")



(provide :pkg_task2/temp2 "7ce4159d4691541e9099927d38b0b65f")


