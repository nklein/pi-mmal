(in-package :pi-mmal-test)

(fiveam:def-suite mmal-types-exports
    :description "Test that the pi-mmal package exports the
                  expected symbols from mmal_types.h.")

(fiveam:in-suite mmal-types-exports)

(fiveam:test mmal-status-t-test
  (let ((status-t (pi-mmal-symbol :mmal-status-t)))
    (flet ((enum-value (keyword)
             (cffi:foreign-enum-value status-t keyword)))
      (fiveam:is (pi-mmal-symbol-externalp :mmal-status-t))
      (fiveam:is (= (enum-value :mmal-success)    0))
      (fiveam:is (= (enum-value :mmal-enomem)     1))
      (fiveam:is (= (enum-value :mmal-enospc)     2))
      (fiveam:is (= (enum-value :mmal-einval)     3))
      (fiveam:is (= (enum-value :mmal-enosys)     4))
      (fiveam:is (= (enum-value :mmal-enoent)     5))
      (fiveam:is (= (enum-value :mmal-enxio)      6))
      (fiveam:is (= (enum-value :mmal-eio)        7))
      (fiveam:is (= (enum-value :mmal-espipe)     8))
      (fiveam:is (= (enum-value :mmal-ecorrupt)   9))
      (fiveam:is (= (enum-value :mmal-enotready) 10))
      (fiveam:is (= (enum-value :mmal-econfig)   11))
      (fiveam:is (= (enum-value :mmal-eisconn)   12))
      (fiveam:is (= (enum-value :mmal-enotconn)  13))
      (fiveam:is (= (enum-value :mmal-eagain)    14))
      (fiveam:is (= (enum-value :mmal-efault)    15))
      (fiveam:is (= (enum-value :mmal-status-max) #x7FFFFFFF)))))

(fiveam:test mmal-time-unknown-test
  (fiveam:is (pi-mmal-symbol-externalp :+mmal-time-unknown+))
  (fiveam:is (= (symbol-value (pi-mmal-symbol :+mmal-time-unknown+))
                #x8000000000000000)))

(fiveam:test mmal-rect-t-test
  (fiveam:is (pi-mmal-symbol-externalp :mmal-rect-t))
  (fiveam:is (= (cffi:foreign-type-size
                 `(:struct ,(pi-mmal-symbol :mmal-rect-t)))
                16)))

(fiveam:test mmal-rational-t-test
  (fiveam:is (pi-mmal-symbol-externalp :mmal-rational-t))
  (fiveam:is (= (cffi:foreign-type-size
                 `(:struct ,(pi-mmal-symbol :mmal-rational-t)))
                8)))

(fiveam:test mmal-fourcc-t-test
  (fiveam:is (pi-mmal-symbol-externalp :mmal-fourcc-t))
  (fiveam:is (= (cffi:foreign-type-size (pi-mmal-symbol :mmal-fourcc-t))
                4)))