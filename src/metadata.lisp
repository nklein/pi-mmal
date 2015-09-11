(in-package #:pi-mmal)

(cl:defconstant #.(swig-lispify "MMAL_METADATA_HELLO_WORLD" 'constant)
        #.(string->word "HELO"))
(cl:export '#.(swig-lispify "MMAL_METADATA_HELLO_WORLD" 'constant))

(cffi:defcstruct #.(swig-lispify "MMAL_METADATA_T" 'classname)
	(#.(swig-lispify "id" 'slotname) :unsigned-int)
	(#.(swig-lispify "size" 'slotname) :unsigned-int))
(cl:export '#.(swig-lispify "MMAL_METADATA_T" 'classname))

(cl:export '#.(swig-lispify "id" 'slotname))
(cl:export '#.(swig-lispify "size" 'slotname))

(cffi:defctype #.(swig-lispify "MMAL_METADATA_T" 'typename) :pointer)
(cl:export '#.(swig-lispify "MMAL_METADATA_T" 'typename))

(cffi:defcstruct #.(swig-lispify "MMAL_METADATA_HELLO_WORLD_T" 'classname)
	(#.(swig-lispify "id" 'slotname) :unsigned-int)
	(#.(swig-lispify "size" 'slotname) :unsigned-int)
	(#.(swig-lispify "myvalue" 'slotname) :unsigned-int))
(cl:export '#.(swig-lispify "MMAL_METADATA_HELLO_WORLD_T" 'classname))

(cl:export '#.(swig-lispify "id" 'slotname))
(cl:export '#.(swig-lispify "size" 'slotname))
(cl:export '#.(swig-lispify "myvalue" 'slotname))

(cffi:defctype #.(swig-lispify "MMAL_METADATA_HELLO_WORLD_T" 'typename)
  :pointer)
(cl:export '#.(swig-lispify "MMAL_METADATA_HELLO_WORLD_T" 'typename))

(cffi:defcfun ("mmal_metadata_get"
               #.(swig-lispify "mmal_metadata_get" 'function)) :pointer
  (header :pointer)
  (id :unsigned-int))
(cl:export '#.(swig-lispify "mmal_metadata_get" 'function))

(cffi:defcfun ("mmal_metadata_set"
               #.(swig-lispify "mmal_metadata_set" 'function))
    #.(swig-lispify "MMAL_STATUS_T" 'enumname)
  (header :pointer)
  (metadata :pointer))
(cl:export '#.(swig-lispify "mmal_metadata_set" 'function))
