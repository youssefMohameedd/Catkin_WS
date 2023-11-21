;; Auto-generated. Do not edit!


(when (boundp 'first::Birthday)
  (if (not (find-package "FIRST"))
    (make-package "FIRST"))
  (shadow 'Birthday (find-package "FIRST")))
(unless (find-package "FIRST::BIRTHDAY")
  (make-package "FIRST::BIRTHDAY"))
(unless (find-package "FIRST::BIRTHDAYREQUEST")
  (make-package "FIRST::BIRTHDAYREQUEST"))
(unless (find-package "FIRST::BIRTHDAYRESPONSE")
  (make-package "FIRST::BIRTHDAYRESPONSE"))

(in-package "ROS")





(defclass first::BirthdayRequest
  :super ros::object
  :slots (_age ))

(defmethod first::BirthdayRequest
  (:init
   (&key
    ((:age __age) 0)
    )
   (send-super :init)
   (setq _age (round __age))
   self)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:serialization-length
   ()
   (+
    ;; int64 _age
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _age
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _age (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _age) (= (length (_age . bv)) 2)) ;; bignum
              (write-long (ash (elt (_age . bv) 0) 0) s)
              (write-long (ash (elt (_age . bv) 1) -1) s))
             ((and (class _age) (= (length (_age . bv)) 1)) ;; big1
              (write-long (elt (_age . bv) 0) s)
              (write-long (if (>= _age 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _age s)(write-long (if (>= _age 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _age
#+(or :alpha :irix6 :x86_64)
      (setf _age (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _age (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass first::BirthdayResponse
  :super ros::object
  :slots (_message ))

(defmethod first::BirthdayResponse
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

(defclass first::Birthday
  :super ros::object
  :slots ())

(setf (get first::Birthday :md5sum-) "10865812b40adf763ff24279c924d0fc")
(setf (get first::Birthday :datatype-) "first/Birthday")
(setf (get first::Birthday :request) first::BirthdayRequest)
(setf (get first::Birthday :response) first::BirthdayResponse)

(defmethod first::BirthdayRequest
  (:response () (instance first::BirthdayResponse :init)))

(setf (get first::BirthdayRequest :md5sum-) "10865812b40adf763ff24279c924d0fc")
(setf (get first::BirthdayRequest :datatype-) "first/BirthdayRequest")
(setf (get first::BirthdayRequest :definition-)
      "int64 age
---
string message
")

(setf (get first::BirthdayResponse :md5sum-) "10865812b40adf763ff24279c924d0fc")
(setf (get first::BirthdayResponse :datatype-) "first/BirthdayResponse")
(setf (get first::BirthdayResponse :definition-)
      "int64 age
---
string message
")



(provide :first/Birthday "10865812b40adf763ff24279c924d0fc")


