(in-package #:pi-mmal)

(cl:defconstant #.(swig-lispify "MMAL_MAGIC" 'constant)
                #.(string->word "mmal"))
(cl:export '#.(swig-lispify "MMAL_MAGIC" 'constant))

(cffi:defctype #.(swig-lispify "MMAL_BOOL_T" 'typename) :int)
(cl:export '#.(swig-lispify "MMAL_BOOL_T" 'typename))

(cl:defconstant #.(swig-lispify "MMAL_FALSE" 'constant) 0)
(cl:export '#.(swig-lispify "MMAL_FALSE" 'constant))

(cl:defconstant #.(swig-lispify "MMAL_TRUE" 'constant) 1)
(cl:export '#.(swig-lispify "MMAL_TRUE" 'constant))

(cffi:defcstruct #.(swig-lispify "MMAL_CORE_STATISTICS_T" 'classname)
	(#.(swig-lispify "buffer_count" 'slotname) :unsigned-int)
	(#.(swig-lispify "first_buffer_time" 'slotname) :unsigned-int)
	(#.(swig-lispify "last_buffer_time" 'slotname) :unsigned-int)
	(#.(swig-lispify "max_delay" 'slotname) :unsigned-int))
(cl:export '#.(swig-lispify "MMAL_CORE_STATISTICS_T" 'classname))

(cl:export '#.(swig-lispify "buffer_count" 'slotname))
(cl:export '#.(swig-lispify "first_buffer_time" 'slotname))
(cl:export '#.(swig-lispify "last_buffer_time" 'slotname))
(cl:export '#.(swig-lispify "max_delay" 'slotname))

(cffi:defctype #.(swig-lispify "MMAL_CORE_STATISTICS_T" 'typename)
  (:struct #.(swig-lispify "MMAL_CORE_STATISTICS_T" 'classname)))
(cl:export '#.(swig-lispify "MMAL_CORE_STATISTICS_T" 'typename))

(cffi:defcstruct #.(swig-lispify "MMAL_CORE_PORT_STATISTICS_T" 'classname)
  (#.(swig-lispify "rx" 'slotname)
     #.(swig-lispify "MMAL_CORE_STATISTICS_T" 'classname))
  (#.(swig-lispify "tx" 'slotname)
     #.(swig-lispify "MMAL_CORE_STATISTICS_T" 'classname)))
(cl:export '#.(swig-lispify "MMAL_CORE_PORT_STATISTICS_T" 'classname))

(cl:export '#.(swig-lispify "rx" 'slotname))
(cl:export '#.(swig-lispify "tx" 'slotname))

(cffi:defctype #.(swig-lispify "MMAL_CORE_PORT_STATISTICS_T" 'typename)
  (:struct #.(swig-lispify "MMAL_CORE_PORT_STATISTICS_T" 'classname)))
(cl:export '#.(swig-lispify "MMAL_CORE_PORT_STATISTICS_T" 'typename))

(cffi:defctype #.(swig-lispify "MMAL_FIXED_16_16_T" 'typename) :unsigned-int)
(cl:export '#.(swig-lispify "MMAL_FIXED_16_16_T" 'typename))
