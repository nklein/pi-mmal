(in-package #:pi-mmal)

(cffi:defctype #.(swig-lispify "MMAL_QUEUE_T" 'typename) :pointer)
(cl:export '#.(swig-lispify "MMAL_QUEUE_T" 'typename))

(cffi:defcfun ("mmal_queue_create"
               #.(swig-lispify "mmal_queue_create" 'function)) :pointer)
(cl:export '#.(swig-lispify "mmal_queue_create" 'function))

(cffi:defcfun ("mmal_queue_put"
               #.(swig-lispify "mmal_queue_put" 'function)) :void
  (queue :pointer)
  (buffer :pointer))
(cl:export '#.(swig-lispify "mmal_queue_put" 'function))

(cffi:defcfun ("mmal_queue_put_back"
               #.(swig-lispify "mmal_queue_put_back" 'function)) :void
  (queue :pointer)
  (buffer :pointer))
(cl:export '#.(swig-lispify "mmal_queue_put_back" 'function))

(cffi:defcfun ("mmal_queue_get"
               #.(swig-lispify "mmal_queue_get" 'function)) :pointer
  (queue :pointer))
(cl:export '#.(swig-lispify "mmal_queue_get" 'function))

(cffi:defcfun ("mmal_queue_wait"
               #.(swig-lispify "mmal_queue_wait" 'function)) :pointer
  (queue :pointer))
(cl:export '#.(swig-lispify "mmal_queue_wait" 'function))

(cffi:defcfun ("mmal_queue_timedwait"
               #.(swig-lispify "mmal_queue_timedwait" 'function)) :pointer
  (queue :pointer)
  (timeout :pointer))
(cl:export '#.(swig-lispify "mmal_queue_timedwait" 'function))

(cffi:defcfun ("mmal_queue_length"
               #.(swig-lispify "mmal_queue_length" 'function)) :unsigned-int
  (queue :pointer))
(cl:export '#.(swig-lispify "mmal_queue_length" 'function))

(cffi:defcfun ("mmal_queue_destroy"
               #.(swig-lispify "mmal_queue_destroy" 'function)) :void
  (queue :pointer))
(cl:export '#.(swig-lispify "mmal_queue_destroy" 'function))
