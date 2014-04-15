(in-package :pi-mmal)

(cffi:defcenum mmal-status-t
  :mmal-success
  :mmal-enomem
  :mmal-enospc
  :mmal-einval
  :mmal-enosys
  :mmal-enoent
  :mmal-enxio
  :mmal-eio
  :mmal-espipe
  :mmal-ecorrupt
  :mmal-enotready
  :mmal-econfig
  :mmal-eisconn
  :mmal-enotconn
  :mmal-eagain
  :mmal-efault
  (:mmal-status-max #x7FFFFFFF))

(cffi:defcstruct mmal-rect-t
  (x :int32)
  (y :int32)
  (width :int32)
  (height :int32))

(cffi:defcstruct mmal-rational-t
  (num :int32)
  (den :int32))

(defconstant +mmal-time-unknown+ (dpb 1 (byte 1 63) 0))


(cffi:defctype mmal-fourcc-t :uint32)