
(in-package :pi-mmal-test)

(fiveam:def-suite mmal-component-exports
    :description "Test that the pi-mmal package exports the
                  expected symbols from mmal_components.h.")

(fiveam:in-suite mmal-component-exports)

(fiveam:test mmal-component-private-t-test
  (fiveam:is (pi-mmal-symbol-externalp :mmal-component-private-t))
  (fiveam:is (zerop (cffi:foreign-type-size
                     `(:struct ,(pi-mmal-symbol :mmal-component-private-t))))))

(fiveam:test mmal-component-t-test
  (fiveam:is (pi-mmal-symbol-externalp :mmal-component-t))
  (fiveam:is (= (cffi:foreign-type-size
                 `(:struct ,(pi-mmal-symbol :mmal-component-t)))
                48)))

(fiveam:test mmal-component-create-test
  (fiveam:is (pi-mmal-symbol-externalp :mmal-component-create))
  (fiveam:is (pi-mmal-symbol-functionp :mmal-component-create)))

(fiveam:test mmal-component-create*-test
  (fiveam:is (pi-mmal-symbol-externalp :mmal-component-create*))
  (fiveam:is (pi-mmal-symbol-functionp :mmal-component-create*)))

(fiveam:test mmal-component-acquire-test
  (fiveam:is (pi-mmal-symbol-externalp :mmal-component-acquire))
  (fiveam:is (pi-mmal-symbol-functionp :mmal-component-acquire)))

(fiveam:test mmal-component-release-test
  (fiveam:is (pi-mmal-symbol-externalp :mmal-component-release))
  (fiveam:is (pi-mmal-symbol-functionp :mmal-component-release)))

(fiveam:test mmal-component-destroy-test
  (fiveam:is (pi-mmal-symbol-externalp :mmal-component-destroy))
  (fiveam:is (pi-mmal-symbol-functionp :mmal-component-destroy)))

(fiveam:test mmal-component-enable-test
  (fiveam:is (pi-mmal-symbol-externalp :mmal-component-enable))
  (fiveam:is (pi-mmal-symbol-functionp :mmal-component-enable)))

(fiveam:test mmal-component-disable-test
  (fiveam:is (pi-mmal-symbol-externalp :mmal-component-disable))
  (fiveam:is (pi-mmal-symbol-functionp :mmal-component-disable)))
