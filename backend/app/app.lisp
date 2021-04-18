(ql:quickload :mito)

(defpackage #:app
  (:use #:cl
        #:utopian
        #:mito))
(in-package #:app)

(defparameter *connection*
  (connect-toplevel :postgres
                    :host "db"
                    :port 5432
                    :database-name "example"
                    :username "fireflower0"
                    :password "password"))

(defclass users ()
  ((name :col-type (:varchar 64)
         :accessor users-name)
   (email :col-type (or (:varchar 128) :null)
          :accessor users-email))
  (:metaclass dao-table-class))

(defun index (params)
  (declare (ignore params))
  "Hello, Utopian!")

(defun foo (params)
  (declare (ignore params))
  (let* ((ret (find-dao 'users :name "foo"))
         (name (users-name ret))
         (email (users-email ret)))
    (format nil "Hello, ~A! Your email is ~A" name email)))

(defun bar (params)
  (declare (ignore params))
  (let* ((ret (find-dao 'users :name "bar"))
         (name (users-name ret))
         (email (users-email ret)))
    (format nil "Hello, ~A! Your email is ~A" name email)))

(defun baz (params)
  (declare (ignore params))
  (let* ((ret (find-dao 'users :name "baz"))
         (name (users-name ret))
         (email (users-email ret)))
    (format nil "Hello, ~A! Your email is ~A" name email)))

(defroutes *routes*
    ((:GET "/" #'index)
     (:GET "/foo" #'foo)
     (:GET "/bar" #'bar)
     (:GET "/baz" #'baz)))

(defapp app () ())

(make-instance 'app :routes *routes*)
