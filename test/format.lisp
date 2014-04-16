
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
  (fiveam:is (pi-mmal-symbol-externalp :mmal-video-format-t))
  (fiveam:is (= (cffi:foreign-type-size
                 `(:struct ,(pi-mmal-symbol :mmal-video-format-t)))
                44)))

(fiveam:test mmal-audio-format-t-test
  (fiveam:is (pi-mmal-symbol-externalp :mmal-audio-format-t))
  (fiveam:is (= (cffi:foreign-type-size
                 `(:struct ,(pi-mmal-symbol :mmal-audio-format-t)))
                16)))

(fiveam:test mmal-subpicture-format-t-test
  (fiveam:is (pi-mmal-symbol-externalp :mmal-subpicture-format-t))
  (fiveam:is (= (cffi:foreign-type-size
                 `(:struct ,(pi-mmal-symbol :mmal-subpicture-format-t)))
                8)))

(fiveam:test mmal-es-specific-format-t-test
  (fiveam:is (pi-mmal-symbol-externalp :mmal-es-specific-format-t))
  (fiveam:is (= (cffi:foreign-type-size
                 `(:struct ,(pi-mmal-symbol :mmal-es-specific-format-t)))
                68)))

(fiveam:test mmal-es-format-flag-test
  (fiveam:is (pi-mmal-symbol-externalp :+mmal-es-format-flag-framed+))
  (fiveam:is (= (symbol-value (pi-mmal-symbol :+mmal-es-format-flag-framed+))
                #x01)))

(fiveam:test mmal-encoding-test
  (fiveam:is (pi-mmal-symbol-externalp :+mmal-encoding-unknown+))
  (fiveam:is (zerop (symbol-value (pi-mmal-symbol :+mmal-encoding-unknown+)))))

(fiveam:test mmal-encoding-variant-test
  (fiveam:is (pi-mmal-symbol-externalp :+mmal-encoding-variant-default+))
  (fiveam:is (zerop (symbol-value
                     (pi-mmal-symbol :+mmal-encoding-variant-default+)))))

(fiveam:test mmal-es-format-t-test
  (fiveam:is (pi-mmal-symbol-externalp :mmal-es-format-t))
  (fiveam:is (= (cffi:foreign-type-size
                 `(:struct ,(pi-mmal-symbol :mmal-es-format-t)))
                32)))

(fiveam:test mmal-format-alloc-test
  (fiveam:is (pi-mmal-symbol-externalp :mmal-format-alloc))
  (fiveam:is (pi-mmal-symbol-functionp :mmal-format-alloc)))

(fiveam:test mmal-format-free-test
  (fiveam:is (pi-mmal-symbol-externalp :mmal-format-free))
  (fiveam:is (pi-mmal-symbol-functionp :mmal-format-free)))

(fiveam:test mmal-format-extradata-alloc-test
  (fiveam:is (pi-mmal-symbol-externalp :mmal-format-extradata-alloc))
  (fiveam:is (pi-mmal-symbol-functionp :mmal-format-extradata-alloc)))

(fiveam:test mmal-format-copy-test
  (fiveam:is (pi-mmal-symbol-externalp :mmal-format-copy))
  (fiveam:is (pi-mmal-symbol-functionp :mmal-format-copy)))

(fiveam:test mmal-format-full-copy-test
  (fiveam:is (pi-mmal-symbol-externalp :mmal-format-full-copy))
  (fiveam:is (pi-mmal-symbol-functionp :mmal-format-full-copy)))

(fiveam:test mmal-format-compare-flag-test
  (macrolet ((public-const-p (symbol value)
               `(progn
                  (fiveam:is (pi-mmal-symbol-externalp ,symbol))
                  (fiveam:is (= (symbol-value (pi-mmal-symbol ,symbol))
                                ,value)))))
    (public-const-p :+mmal-es-format-compare-flag-type+ #x01)
    (public-const-p :+mmal-es-format-compare-flag-encoding+ #x02)
    (public-const-p :+mmal-es-format-compare-flag-bitrate+ #x04)
    (public-const-p :+mmal-es-format-compare-flag-flags+ #x08)
    (public-const-p :+mmal-es-format-compare-flag-extradata+ #x10)
    (public-const-p :+mmal-es-format-compare-flag-video-resolution+ #x0100)
    (public-const-p :+mmal-es-format-compare-flag-video-cropping+ #x0200)
    (public-const-p :+mmal-es-format-compare-flag-video-frame-rate+ #x0400)
    (public-const-p :+mmal-es-format-compare-flag-video-aspect-ratio+ #x0800)
    (public-const-p :+mmal-es-format-compare-flag-video-color-space+ #x1000)
    (public-const-p :+mmal-es-format-compare-flag-es-other+ #x10000000)))

(fiveam:test mmal-format-compare-test
  (fiveam:is (pi-mmal-symbol-externalp :mmal-format-compare))
  (fiveam:is (pi-mmal-symbol-functionp :mmal-format-compare)))
