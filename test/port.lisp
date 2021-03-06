
(in-package :pi-mmal-test)

(fiveam:def-suite mmal-port-exports
    :description "Test that the pi-mmal package exports the
                  expected symbols from mmal_port.h.")

(fiveam:in-suite mmal-port-exports)

(fiveam:test mmal-port-type-t-test
  (let ((status-t (pi-mmal-symbol :mmal-port-type-t)))
    (flet ((enum-value (keyword)
             (cffi:foreign-enum-value status-t keyword)))
      (fiveam:is (pi-mmal-symbol-externalp :mmal-port-type-t))
      (fiveam:is (= (enum-value :mmal-port-type-unknown) 0))
      (fiveam:is (= (enum-value :mmal-port-type-control) 1))
      (fiveam:is (= (enum-value :mmal-port-type-input)   2))
      (fiveam:is (= (enum-value :mmal-port-type-output)  3))
      (fiveam:is (= (enum-value :mmal-port-type-clock)   4))
      (fiveam:is (= (enum-value :mmal-port-type-invalid) #xFFFFFFFF)))))

(fiveam:test mmal-port-capability-test
  (flet ((value (keyword)
           (symbol-value (pi-mmal-symbol keyword))))
    (check-external-constant :+mmal-port-capability-passthrough+ 1)
    (check-external-constant :+mmal-port-capability-allocation+  2)
    (check-external-constant
     :+mmal-port-capability-supports-event-format-change+ 4)))

(fiveam:test mmal-port-t-test
  (check-external-struct :mmal-port-t 64))

(fiveam:test mmal-port-format-commit-test
  (check-external-function :mmal-port-format-commit))

(fiveam:test def-mmal-port-bh-cb-test
  (fiveam:is (pi-mmal-symbol-externalp :def-mmal-port-bh-cb))
  (fiveam:is (pi-mmal-symbol-macrop :def-mmal-port-bh-cb))*)

(fiveam:test mmal-port-enable-test
  (check-external-function :mmal-port-enable))

(fiveam:test mmal-port-disable-test
  (check-external-function :mmal-port-disable))
