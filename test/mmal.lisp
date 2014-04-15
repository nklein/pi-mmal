(in-package :pi-mmal-test)

(fiveam:def-suite mmal-exports
    :description "Test that the pi-mmal package exports the
                  expected symbols from mmal.h.")

(fiveam:in-suite mmal-exports)

(fiveam:test mmal-major-version-test
  (fiveam:is (pi-mmal-symbol-externalp :+mmal-version-major+))
  (fiveam:is (pi-mmal-symbol-constantp :+mmal-version-major+)))

(fiveam:test mmal-minor-version-test
  (fiveam:is (pi-mmal-symbol-externalp :+mmal-version-minor+))
  (fiveam:is (pi-mmal-symbol-constantp :+mmal-version-minor+)))

(fiveam:test mmal-version-test
  (fiveam:is (pi-mmal-symbol-externalp :+mmal-version+))
  (fiveam:is (pi-mmal-symbol-constantp :+mmal-version+)))

(fiveam:test mmal-version-to-major-test
  (fiveam:is (pi-mmal-symbol-externalp :mmal-version-to-major))
  (fiveam:is (pi-mmal-symbol-functionp :mmal-version-to-major)))

(fiveam:test mmal-version-to-minor-test
  (fiveam:is (pi-mmal-symbol-externalp :mmal-version-to-minor))
  (fiveam:is (pi-mmal-symbol-functionp :mmal-version-to-minor)))

(fiveam:test mmal-version-value-test
  (let ((version (symbol-value (pi-mmal-symbol :+mmal-version+)))
        (version-to-major (pi-mmal-symbol :mmal-version-to-major))
        (version-to-minor (pi-mmal-symbol :mmal-version-to-minor)))

    (fiveam:is (= (funcall (symbol-function version-to-major) version)
                  (symbol-value (pi-mmal-symbol :+mmal-version-major+))))

    (fiveam:is (= (funcall (symbol-function version-to-minor) version)
                  (symbol-value (pi-mmal-symbol :+mmal-version-minor+))))))

