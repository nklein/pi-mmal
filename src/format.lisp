
(in-package :pi-mmal)

(cffi:defcenum mmal-es-type-t
  :mmal-es-type-unknown
  :mmal-es-type-control
  :mmal-es-type-audio
  :mmal-es-type-video
  :mmal-es-type-subpicture)

(cffi:defcstruct mmal-video-format-t
  (width :uint32)
  (height :uint32)
  (crop (:struct mmal-rect-t))
  (frame-rate (:struct mmal-rational-t))
  (par (:struct mmal-rational-t))
  (color-space mmal-fourcc-t))

(cffi:defcstruct mmal-audio-format-t
  (channels :uint32)
  (sample-rate :uint32)
  (bits-per-sample :uint32)
  (block-align :uint32))

(cffi:defcstruct mmal-subpicture-format-t
  (x-offset :uint32)
  (y-offset :uint32))

(cffi:defcstruct mmal-es-specific-format-t
  (audio (:struct mmal-audio-format-t))
  (video (:struct mmal-video-format-t))
  (subpicture (:struct mmal-subpicture-format-t)))

(defconstant +mmal-es-format-flag-framed+ #x1)

(defconstant +mmal-encoding-unknown+ 0)

(defconstant +mmal-encoding-variant-default+ 0)

(cffi:defcstruct mmal-es-format-t
  (type mmal-es-type-t)
  (encoding mmal-fourcc-t)
  (encoding-variant mmal-fourcc-t)
  (es (:pointer (:struct mmal-es-specific-format-t)))
  (bitrate :uint32)
  (flags :uint32)
  (extradata-size :uint32)
  (extradata (:pointer :uint8)))

(cffi:defcfun "mmal_format_alloc" (:pointer (:struct mmal-es-format-t)))

(cffi:defcfun "mmal_format_free" :void
  (format (:pointer (:struct mmal-es-format-t))))

(cffi:defcfun "mmal_format_extradata_alloc" mmal-status-t
  (format (:pointer (:struct mmal-es-format-t)))
  (size :uint))

(cffi:defcfun "mmal_format_copy" :void
  (format-dest (:pointer (:struct mmal-es-format-t)))
  (format-src (:pointer (:struct mmal-es-format-t))))

(cffi:defcfun "mmal_format_full_copy" :void
  (format-dest (:pointer (:struct mmal-es-format-t)))
  (format-src (:pointer (:struct mmal-es-format-t))))

(defconstant +mmal-es-format-compare-flag-type+ #x0001)
(defconstant +mmal-es-format-compare-flag-encoding+ #x0002)
(defconstant +mmal-es-format-compare-flag-bitrate+ #x0004)
(defconstant +mmal-es-format-compare-flag-flags+ #x0008)
(defconstant +mmal-es-format-compare-flag-extradata+ #x0010)
(defconstant +mmal-es-format-compare-flag-video-resolution+ #x0100)
(defconstant +mmal-es-format-compare-flag-video-cropping+ #x0200)
(defconstant +mmal-es-format-compare-flag-video-frame-rate+ #x0400)
(defconstant +mmal-es-format-compare-flag-video-aspect-ratio+ #x0800)
(defconstant +mmal-es-format-compare-flag-video-color-space+ #x1000)
(defconstant +mmal-es-format-compare-flag-es-other+ #x10000000)

(cffi:defcfun "mmal_format_compare" :uint32
  (format-1 (:pointer (:struct mmal-es-format-t)))
  (format-2 (:pointer (:struct mmal-es-format-t))))