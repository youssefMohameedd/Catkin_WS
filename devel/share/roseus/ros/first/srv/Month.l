;; Auto-generated. Do not edit!


(when (boundp 'first::Month)
  (if (not (find-package "FIRST"))
    (make-package "FIRST"))
  (shadow 'Month (find-package "FIRST")))
(unless (find-package "FIRST::MONTH")
  (make-package "FIRST::MONTH"))
(unless (find-package "FIRST::MONTHREQUEST")
  (make-package "FIRST::MONTHREQUEST"))
(unless (find-package "FIRST::MONTHRESPONSE")
  (make-package "FIRST::MONTHRESPONSE"))

(in-package "ROS")





(defclass first::MonthRequest
  :super ros::object
  :slots (_Age ))

(defmethod first::MonthRequest
  (:init
   (&key
    ((:Age __Age) 0)
    )
   (send-super :init)
   (setq _Age (round __Age))
   self)
  (:Age
   (&optional __Age)
   (if __Age (setq _Age __Age)) _Age)
  (:serialization-length
   ()
   (+
    ;; int64 _Age
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _Age
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _Age (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _Age) (= (length (_Age . bv)) 2)) ;; bignum
              (write-long (ash (elt (_Age . bv) 0) 0) s)
              (write-long (ash (elt (_Age . bv) 1) -1) s))
             ((and (class _Age) (= (length (_Age . bv)) 1)) ;; big1
              (write-long (elt (_Age . bv) 0) s)
              (write-long (if (>= _Age 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _Age s)(write-long (if (>= _Age 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _Age
#+(or :alpha :irix6 :x86_64)
      (setf _Age (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _Age (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass first::MonthResponse
  :super ros::object
  :slots (_Message ))

(defmethod first::MonthResponse
  (:init
   (&key
    ((:Message __Message) "")
    )
   (send-super :init)
   (setq _Message (string __Message))
   self)
  (:Message
   (&optional __Message)
   (if __Message (setq _Message __Message)) _Message)
  (:serialization-length
   ()
   (+
    ;; string _Message
    4 (length _Message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _Message
       (write-long (length _Message) s) (princ _Message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _Message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass first::Month
  :super ros::object
  :slots ())

(setf (get first::Month :md5sum-) "1278061dd68c53a50ae17a40e29b2734")
(setf (get first::Month :datatype-) "first/Month")
(setf (get first::Month :request) first::MonthRequest)
(setf (get first::Month :response) first::MonthResponse)

(defmethod first::MonthRequest
  (:response () (instance first::MonthResponse :init)))

(setf (get first::MonthRequest :md5sum-) "1278061dd68c53a50ae17a40e29b2734")
(setf (get first::MonthRequest :datatype-) "first/MonthRequest")
(setf (get first::MonthRequest :definition-)
      "int64 Age
---
string Message
")

(setf (get first::MonthResponse :md5sum-) "1278061dd68c53a50ae17a40e29b2734")
(setf (get first::MonthResponse :datatype-) "first/MonthResponse")
(setf (get first::MonthResponse :definition-)
      "int64 Age
---
string Message
")



(provide :first/Month "1278061dd68c53a50ae17a40e29b2734")


