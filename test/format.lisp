
(in-package :pi-mmal-test)

(fiveam:def-suite mmal-format-exports
    :description "Test that the pi-mmal package exports the
                  expected symbols from mmal_format.h.")

(fiveam:in-suite mmal-format-exports)

(fiveam:test mmal-es-type-t-test
  (let ((es-type-t (pi-mmal-symbol :mmal-es-type-t)))
    (flet ((enum-value (keyword)
             (cffi:foreign-enum-value es-type-t keyword)))
      (fiveam:is (pi-mmal-symbol-externalp :mmal-es-type-t))
      (fiveam:is (= (enum-value :mmal-es-type-unknown)    0))
      (fiveam:is (= (enum-value :mmal-es-type-control)    1))
      (fiveam:is (= (enum-value :mmal-es-type-audio)      2))
      (fiveam:is (= (enum-value :mmal-es-type-video)      3))
      (fiveam:is (= (enum-value :mmal-es-type-subpicture) 4)))))

(fiveam:test mmal-video-format-t-test
  (check-external-struct :mmal-video-format-t 44))

(fiveam:test mmal-audio-format-t-test
  (check-external-struct :mmal-audio-format-t 16))

(fiveam:test mmal-subpicture-format-t-test
  (check-external-struct :mmal-subpicture-format-t 8))

(fiveam:test mmal-es-specific-format-t-test
  (check-external-struct :mmal-es-specific-format-t 68))

(fiveam:test mmal-es-format-flag-test
  (check-external-constant :+mmal-es-format-flag-framed+ #x01))

(fiveam:test mmal-encoding-test
  (check-external-constant :+mmal-encoding-unknown+ 0))

(fiveam:test mmal-encoding-variant-test
  (check-external-constant :+mmal-encoding-variant-default+ 0))

(fiveam:test mmal-es-format-t-test
  (check-external-struct :mmal-es-format-t 32))

(fiveam:test mmal-format-alloc-test
  (check-external-function :mmal-format-alloc))

(fiveam:test mmal-format-free-test
  (check-external-function :mmal-format-free))

(fiveam:test mmal-format-extradata-alloc-test
  (check-external-function :mmal-format-extradata-alloc))

(fiveam:test mmal-format-copy-test
  (check-external-function :mmal-format-copy))

(fiveam:test mmal-format-full-copy-test
  (check-external-function :mmal-format-full-copy))

(fiveam:test mmal-format-compare-flag-test
  (check-external-constant :+mmal-es-format-compare-flag-type+      #x01)
  (check-external-constant :+mmal-es-format-compare-flag-encoding+  #x02)
  (check-external-constant :+mmal-es-format-compare-flag-bitrate+   #x04)
  (check-external-constant :+mmal-es-format-compare-flag-flags+     #x08)
  (check-external-constant :+mmal-es-format-compare-flag-extradata+ #x10)

  (check-external-constant :+mmal-es-format-compare-flag-video-resolution+
                           #x0100)
  (check-external-constant :+mmal-es-format-compare-flag-video-cropping+
                           #x0200)
  (check-external-constant :+mmal-es-format-compare-flag-video-frame-rate+
                           #x0400)
  (check-external-constant :+mmal-es-format-compare-flag-video-aspect-ratio+
                           #x0800)
  (check-external-constant :+mmal-es-format-compare-flag-video-color-space+
                           #x1000)
  (check-external-constant :+mmal-es-format-compare-flag-es-other+
                           #x10000000))

(fiveam:test mmal-format-compare-test
  (check-external-function :mmal-format-compare))
