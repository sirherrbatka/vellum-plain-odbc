(cl:in-package #:vellum-plain-odbc)


(defmethod vellum:copy-from ((format (eql ':plain-odbc))
                             input
                             &rest options
                               &key
                                 (columns '())
                                 (header (apply #'vellum.header:make-header columns))
                                 connection-parameters
                                 (connection
                                  (apply #'plain-odbc:connect connection-parameters)
                                  connection-bound-p)
                                 (close-connection (not connection-bound-p)))
  (declare (ignore options))
  (unwind-protect
       (vellum:to-table (plain-odbc:exec-query connection input)
                        :header header)
       (when close-connection
         (plain-odbc:close-connection connection))))
