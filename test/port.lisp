
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
    (fiveam:is (pi-mmal-symbol-externalp :+mmal-port-capability-passthrough+))
    (fiveam:is (= (value :+mmal-port-capability-passthrough+) 1))

    (fiveam:is (pi-mmal-symbol-externalp :+mmal-port-capability-allocation+))
    (fiveam:is (= (value :+mmal-port-capability-allocation+) 2))

    (fiveam:is (pi-mmal-symbol-externalp
                 :+mmal-port-capability-supports-event-format-change+))
    (fiveam:is (= (value :+mmal-port-capability-supports-event-format-change+)
                  4))))

(fiveam:test mmal-port-t-test
  (fiveam:is (pi-mmal-symbol-externalp :mmal-port-t))
  (fiveam:is (= (cffi:foreign-type-size
                 `(:struct ,(pi-mmal-symbol :mmal-port-t)))
                64)))
