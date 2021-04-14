(ql:quickload :mito)

(defvar *connection*
  (mito:connect-toplevel :postgres
                         :host "db"
                         :port 5432
                         :database-name "example"
                         :username "fireflower0"
                         :password "password"))

(mito:deftable metavars () ((var :col-type (:varchar 64))))
(mapc #'mito:execute-sql (mito:table-definition 'metavars))
(mito:ensure-table-exists 'metavars)

(mapc #'mito:insert-dao
      `(,(make-instance 'metavars :var "foo")
        ,(make-instance 'metavars :var "bar")
        ,(make-instance 'metavars :var "baz")))

(lambda (env)
  (declare (ignore env))
  (let* ((vars (mapcar #'metavars-var (mito:select-dao 'metavars)))
         (message (format nil "Hello, ~{~A ~}" vars)))
    `(200 (:content-type "text/plain") (,message))))
