;; Auto-generated. Do not edit!


(when (boundp 'first::CakeResult)
  (if (not (find-package "FIRST"))
    (make-package "FIRST"))
  (shadow 'CakeResult (find-package "FIRST")))
(unless (find-package "FIRST::CAKERESULT")
  (make-package "FIRST::CAKERESULT"))

(in-package "ROS")
;;//! \htmlinclude CakeResult.msg.html


(defclass first::CakeResult
  :super ros::object
  :slots (_message ))

(defmethod first::CakeResult
  (:init
   (&key
    ((:message __message) "")
    )
   (send-super :init)
   (setq _message (string __message))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get first::CakeResult :md5sum-) "5f003d6bcc824cbd51361d66d8e4f76c")
(setf (get first::CakeResult :datatype-) "first/CakeResult")
(setf (get first::CakeResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
string message

")



(provide :first/CakeResult "5f003d6bcc824cbd51361d66d8e4f76c")


