(in-package :pi-mmal)

(cffi:define-foreign-library libmmal
  (:linux (:or "libmmal.so"
               "/opt/vc/libmmal.so")))

(cffi:use-foreign-library libmmal)

(defconstant +mmal-version+ (dpb (byte 16 16) +mmal-version-major+
                                 (dpb (byte 16 0) +mmal-version-minor+ 0)))

(defun mmal-version-to-major (version)
  (ldb (byte 16 16) version))

(defun mmal-version-to-minor (version)
  (ldb (byte 16 0) version))
