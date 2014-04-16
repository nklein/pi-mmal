(in-package :pi-mmal-test)

(fiveam:def-suite mmal-exports
    :description "Test that the pi-mmal package exports the
                  expected symbols from mmal.h.")

(fiveam:in-suite mmal-exports)

(fiveam:test mmal-major-version-test
  (check-external-constant :+mmal-version-major+ 0))

(fiveam:test mmal-minor-version-test
  (check-external-constant :+mmal-version-minor+ 1))

(fiveam:test mmal-version-test
  (check-external-constant :+mmal-version+))

(fiveam:test mmal-version-to-major-test
  (check-external-function :mmal-version-to-major))

(fiveam:test mmal-version-to-minor-test
  (check-external-function :mmal-version-to-minor))

(fiveam:test mmal-version-value-test
  (let ((version (symbol-value (pi-mmal-symbol :+mmal-version+)))
        (version-to-major (pi-mmal-symbol :mmal-version-to-major))
        (version-to-minor (pi-mmal-symbol :mmal-version-to-minor)))

    (fiveam:is (= (funcall (symbol-function version-to-major) version)
                  (symbol-value (pi-mmal-symbol :+mmal-version-major+))))

    (fiveam:is (= (funcall (symbol-function version-to-minor) version)
                  (symbol-value (pi-mmal-symbol :+mmal-version-minor+))))))

