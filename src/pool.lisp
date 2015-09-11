(in-package #:pi-mmal)

(cffi:defcstruct #.(swig-lispify "MMAL_POOL_T" 'classname)
	(#.(swig-lispify "queue" 'slotname) :pointer)
	(#.(swig-lispify "headers_num" 'slotname) :unsigned-int)
	(#.(swig-lispify "header" 'slotname) :pointer))
(cl:export '#.(swig-lispify "MMAL_POOL_T" 'classname))

(cl:export '#.(swig-lispify "queue" 'slotname))
(cl:export '#.(swig-lispify "headers_num" 'slotname))
(cl:export '#.(swig-lispify "header" 'slotname))

(cffi:defctype #.(swig-lispify "MMAL_POOL_T" 'typename)
  (:struct #.(swig-lispify "MMAL_POOL_T" 'classname)))
(cl:export '#.(swig-lispify "MMAL_POOL_T" 'typename))

(cffi:defctype #.(swig-lispify "mmal_pool_allocator_alloc_t" 'typename)
  :pointer)
(cl:export '#.(swig-lispify "mmal_pool_allocator_alloc_t" 'typename))

(cffi:defctype #.(swig-lispify "mmal_pool_allocator_free_t" 'typename)
  :pointer)
(cl:export '#.(swig-lispify "mmal_pool_allocator_free_t" 'typename))

(cffi:defcfun ("mmal_pool_create"
               #.(swig-lispify "mmal_pool_create" 'function)) :pointer
  (headers :unsigned-int)
  (payload_size :unsigned-int))
(cl:export '#.(swig-lispify "mmal_pool_create" 'function))

(cffi:defcfun ("mmal_pool_create_with_allocator"
               #.(swig-lispify "mmal_pool_create_with_allocator" 'function))
    :pointer
  (headers :unsigned-int)
  (payload_size :unsigned-int)
  (allocator_context :pointer)
  (allocator_alloc :pointer)
  (allocator_free :pointer))
(cl:export '#.(swig-lispify "mmal_pool_create_with_allocator" 'function))

(cffi:defcfun ("mmal_pool_destroy"
               #.(swig-lispify "mmal_pool_destroy" 'function)) :void
  (pool :pointer))
(cl:export '#.(swig-lispify "mmal_pool_destroy" 'function))

(cffi:defcfun ("mmal_pool_resize"
               #.(swig-lispify "mmal_pool_resize" 'function))
    #.(swig-lispify "MMAL_STATUS_T" 'enumname)
  (pool :pointer)
  (headers :unsigned-int)
  (payload_size :unsigned-int))
(cl:export '#.(swig-lispify "mmal_pool_resize" 'function))

(cffi:defctype #.(swig-lispify "MMAL_POOL_BH_CB_T" 'typename) :pointer)
(cl:export '#.(swig-lispify "MMAL_POOL_BH_CB_T" 'typename))

(cffi:defcfun ("mmal_pool_callback_set"
               #.(swig-lispify "mmal_pool_callback_set" 'function)) :void
  (pool :pointer)
  (cb :pointer)
  (userdata :pointer))
(cl:export '#.(swig-lispify "mmal_pool_callback_set" 'function))

(cffi:defcfun ("mmal_pool_pre_release_callback_set"
               #.(swig-lispify "mmal_pool_pre_release_callback_set" 'function))
    :void
  (pool :pointer)
  (cb :pointer)
  (userdata :pointer))
(cl:export '#.(swig-lispify "mmal_pool_pre_release_callback_set" 'function))
