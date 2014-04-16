
(defpackage :pi-mmal-test
  (:use :cl)
  (:export :run-all-tests))

(in-package :pi-mmal-test)

(defun run-all-tests (&key (debug-on-error fiveam:*debug-on-error*)
                           (debug-on-failure fiveam:*debug-on-failure*)
                           suites)
  (let ((fiveam:*debug-on-error* debug-on-error)
        (fiveam:*debug-on-failure* debug-on-failure))
    (let* ((suites (or suites
                       '(mmal-exports
                         mmal-types-exports
                         mmal-port-exports
                         mmal-format-exports
                         mmal-component-exports)))
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

(defun pi-mmal-symbol-macrop (symbol)
  (macro-function (pi-mmal-symbol symbol)))

(defmacro check-external-constant (symbol &optional (value nil value-p))
  `(progn
     (fiveam:is (pi-mmal-symbol-externalp ,symbol))
     (fiveam:is (pi-mmal-symbol-constantp ,symbol))
     ,@(when value-p
         `((fiveam:is (= (symbol-value (pi-mmal-symbol ,symbol)) ,value))))))

(defmacro check-external-function (symbol)
  `(progn
     (fiveam:is (pi-mmal-symbol-externalp ,symbol))
     (fiveam:is (pi-mmal-symbol-functionp ,symbol))))

(defmacro check-external-struct (symbol &optional (size nil size-p))
  `(progn
     (fiveam:is (pi-mmal-symbol-externalp ,symbol))
     ,@(when size-p
         `((fiveam:is (= (cffi:foreign-type-size
                          `(:struct ,(pi-mmal-symbol ,symbol)))
                         ,size))))))

