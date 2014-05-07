(in-package :pi-mmal)

(cffi:defcstruct mmal-buffer-header-video-specific-t
  (planes :uint32)
  (offset :uint32 :count 4)
  (pitch :uint32 :count 4)
  (flags :uint32))

(cffi:defcunion mmal-buffer-header-type-specific-t
  (video (:struct mmal-buffer-header-video-specific-t)))

(cffi:defcstruct mmal-buffer-header-private-t)

(cffi:defcstruct mmal-buffer-header-t
  (next :pointer)
  (priv (:pointer (:struct mmal-buffer-header-private-t)))
  (cmd :uint32)
  (data (:pointer :uint8))
  (alloc-size :uint32)
  (length :uint32)
  (offset :uint32)
  (flags :uint32)
  (pts :int64)
  (dts :int64)
  (type (:pointer (:union mmal-buffer-header-type-specific-t)))
  (user-data (:pointer :void)))
