
(cl:in-package :asdf)

(defsystem "first-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
    (:file "Birthday" :depends-on ("_package_Birthday"))
    (:file "_package_Birthday" :depends-on ("_package"))
  ))