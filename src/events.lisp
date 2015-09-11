(in-package #:pi-mmal)

(cl:defconstant #.(swig-lispify "MMAL_EVENT_ERROR" 'constant)
                #.(string->word "ERRO"))
(cl:export '#.(swig-lispify "MMAL_EVENT_ERROR" 'constant))

(cl:defconstant #.(swig-lispify "MMAL_EVENT_EOS" 'constant)
                #.(string->word "EEOS"))
(cl:export '#.(swig-lispify "MMAL_EVENT_EOS" 'constant))

(cl:defconstant #.(swig-lispify "MMAL_EVENT_FORMAT_CHANGED" 'constant)
            #.(string->word "EFCH"))
(cl:export '#.(swig-lispify "MMAL_EVENT_FORMAT_CHANGED" 'constant))

(cl:defconstant #.(swig-lispify "MMAL_EVENT_PARAMETER_CHANGED" 'constant)
                #.(string->word "EPCH"))
(cl:export '#.(swig-lispify "MMAL_EVENT_PARAMETER_CHANGED" 'constant))

(cffi:defcstruct #.(swig-lispify "MMAL_EVENT_END_OF_STREAM_T" 'classname)
	(#.(swig-lispify "port_type" 'slotname) #.(swig-lispify "MMAL_PORT_TYPE_T" 'enumname))
	(#.(swig-lispify "port_index" 'slotname) :unsigned-int))
(cl:export '#.(swig-lispify "MMAL_EVENT_END_OF_STREAM_T" 'classname))

(cl:export '#.(swig-lispify "port_type" 'slotname))
(cl:export '#.(swig-lispify "port_index" 'slotname))

(cffi:defctype #.(swig-lispify "MMAL_EVENT_END_OF_STREAM_T" 'typename) (:struct #.(swig-lispify "MMAL_EVENT_END_OF_STREAM_T" 'classname)))
(cl:export '#.(swig-lispify "MMAL_EVENT_END_OF_STREAM_T" 'typename))

(cffi:defcstruct #.(swig-lispify "MMAL_EVENT_FORMAT_CHANGED_T" 'classname)
	(#.(swig-lispify "buffer_size_min" 'slotname) :unsigned-int)
	(#.(swig-lispify "buffer_num_min" 'slotname) :unsigned-int)
	(#.(swig-lispify "buffer_size_recommended" 'slotname) :unsigned-int)
	(#.(swig-lispify "buffer_num_recommended" 'slotname) :unsigned-int)
	(#.(swig-lispify "format" 'slotname) :pointer))
(cl:export '#.(swig-lispify "MMAL_EVENT_FORMAT_CHANGED_T" 'classname))

(cl:export '#.(swig-lispify "buffer_size_min" 'slotname))
(cl:export '#.(swig-lispify "buffer_num_min" 'slotname))
(cl:export '#.(swig-lispify "buffer_size_recommended" 'slotname))
(cl:export '#.(swig-lispify "buffer_num_recommended" 'slotname))
(cl:export '#.(swig-lispify "format" 'slotname))

(cffi:defctype #.(swig-lispify "MMAL_EVENT_FORMAT_CHANGED_T" 'typename) (:struct #.(swig-lispify "MMAL_EVENT_FORMAT_CHANGED_T" 'classname)))
(cl:export '#.(swig-lispify "MMAL_EVENT_FORMAT_CHANGED_T" 'typename))

(cffi:defcstruct #.(swig-lispify "MMAL_EVENT_PARAMETER_CHANGED_T" 'classname)
	(#.(swig-lispify "hdr" 'slotname) :pointer))
(cl:export '#.(swig-lispify "MMAL_EVENT_PARAMETER_CHANGED_T" 'classname))

(cl:export '#.(swig-lispify "hdr" 'slotname))

(cffi:defctype #.(swig-lispify "MMAL_EVENT_PARAMETER_CHANGED_T" 'typename) (:struct #.(swig-lispify "MMAL_EVENT_PARAMETER_CHANGED_T" 'classname)))
(cl:export '#.(swig-lispify "MMAL_EVENT_PARAMETER_CHANGED_T" 'typename))

(cffi:defcfun ("mmal_event_format_changed_get" #.(swig-lispify "mmal_event_format_changed_get" 'function)) :pointer
  (buffer :pointer))
(cl:export '#.(swig-lispify "mmal_event_format_changed_get" 'function))
