
(defpackage :pi-mmal-test
  (:use :cl)
  (:export :run-all-tests))

(in-package :pi-mmal-test)

(defun run-all-tests (&key (debug-on-error fiveam:*debug-on-error*)
                           (debug-on-failure fiveam:*debug-on-failure*))
  (let ((fiveam:*debug-on-error* debug-on-error)
        (fiveam:*debug-on-failure* debug-on-failure))
    (let* ((suites '(mmal-exports
                     mmal-types-exports
                     mmal-component-exports))
           (results (reduce #'append suites
                            :key #'fiveam:run
                            :initial-value nil)))
      (fiveam:explain! results)
      (fiveam:results-status results))))

(defun pi-mmal-symbol (symbol)
  (find-symbol (symbol-name symbol) :pi-mmal))

(defun pi-mmal-symbol-externalp (symbol)
  (eq (nth-value 1 (pi-mmal-symbol symbol)) :external))

(defun pi-mmal-symbol-constantp (symbol)
  (constantp (symbol-value (pi-mmal-symbol symbol))))

(defun pi-mmal-symbol-functionp (symbol)
  (functionp (symbol-function (pi-mmal-symbol symbol))))
