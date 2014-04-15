(in-package :pi-mmal)

(cffi:defcenum mmal-port-type-t
  :mmal-port-type-unknown
  :mmal-port-type-control
  :mmal-port-type-input
  :mmal-port-type-output
  :mmal-port-type-clock
  (:mmal-port-type-invalid #xFFFFFFFF))

(defconstant +mmal-port-capability-passthrough+ #x01)
(defconstant +mmal-port-capability-allocation+ #x02)
(defconstant +mmal-port-capability-supports-event-format-change+ #x04)

(cffi:defcstruct mmal-port-private-t)
(cffi:defcstruct mmal-component-t)
(cffi:defcstruct mmal-port-userdata-t)

(cffi:defcstruct mmal-port-t
  (priv (:pointer (:struct mmal-port-private-t)))
  (name :string)
  (type mmal-port-type-t)
  (index :uint16)
  (index-all :uint16)
  (is-enabled :uint32)
  (format :pointer)                     ; XXX make MMAL_ES_FORMAT_T
  (buffer-num-min :uint32)
  (buffer-size-min :uint32)
  (buffer-alignment-min :uint32)
  (buffer-num-recommended :uint32)
  (buffer-size-recommended :uint32)
  (buffer-num :uint32)
  (buffer-size :uint32)
  (component (:pointer (:struct mmal-component-t)))
  (userdata (:pointer (:struct mmal-port-userdata-t)))
  (capabilities :uint32))