
(in-package :pi-mmal-test)

(fiveam:def-suite mmal-component-exports
    :description "Test that the pi-mmal package exports the
                  expected symbols from mmal_components.h.")

(fiveam:in-suite mmal-component-exports)

(fiveam:test mmal-component-private-t-test
  (check-external-struct :mmal-component-private-t 0))

(fiveam:test mmal-component-t-test
  (check-external-struct :mmal-component-t 48))

(fiveam:test mmal-component-t-accessor-test
  (check-external-function :mmal-component-output-num)
  (check-external-function :mmal-component-output))

(fiveam:test mmal-component-create-test
  (check-external-function :mmal-component-create))

(fiveam:test mmal-component-create*-test
  (check-external-function :mmal-component-create*))

(fiveam:test mmal-component-acquire-test
  (check-external-function :mmal-component-acquire))

(fiveam:test mmal-component-release-test
  (check-external-function :mmal-component-release))

(fiveam:test mmal-component-destroy-test
  (check-external-function :mmal-component-destroy))

(fiveam:test mmal-component-enable-test
  (check-external-function :mmal-component-enable))

(fiveam:test mmal-component-disable-test
  (check-external-function :mmal-component-disable))
