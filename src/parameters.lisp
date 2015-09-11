(in-package #:pi-mmal)

(cffi:defcstruct #.(swig-lispify "MMAL_PARAMETER_UINT64_T" 'classname)
	(#.(swig-lispify "hdr" 'slotname) :pointer)
	(#.(swig-lispify "value" 'slotname) :unsigned-long-long))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_UINT64_T" 'classname))

(cl:export '#.(swig-lispify "hdr" 'slotname))
(cl:export '#.(swig-lispify "value" 'slotname))

(cffi:defctype #.(swig-lispify "MMAL_PARAMETER_UINT64_T" 'typename)
  (:struct #.(swig-lispify "MMAL_PARAMETER_UINT64_T" 'classname)))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_UINT64_T" 'typename))

(cffi:defcstruct #.(swig-lispify "MMAL_PARAMETER_INT64_T" 'classname)
	(#.(swig-lispify "hdr" 'slotname) :pointer)
	(#.(swig-lispify "value" 'slotname) :long-long))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_INT64_T" 'classname))

(cl:export '#.(swig-lispify "hdr" 'slotname))
(cl:export '#.(swig-lispify "value" 'slotname))

(cffi:defctype #.(swig-lispify "MMAL_PARAMETER_INT64_T" 'typename)
  (:struct #.(swig-lispify "MMAL_PARAMETER_INT64_T" 'classname)))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_INT64_T" 'typename))

(cffi:defcstruct #.(swig-lispify "MMAL_PARAMETER_UINT32_T" 'classname)
	(#.(swig-lispify "hdr" 'slotname) :pointer)
	(#.(swig-lispify "value" 'slotname) :unsigned-int))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_UINT32_T" 'classname))

(cl:export '#.(swig-lispify "hdr" 'slotname))
(cl:export '#.(swig-lispify "value" 'slotname))

(cffi:defctype #.(swig-lispify "MMAL_PARAMETER_UINT32_T" 'typename)
  (:struct #.(swig-lispify "MMAL_PARAMETER_UINT32_T" 'classname)))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_UINT32_T" 'typename))

(cffi:defcstruct #.(swig-lispify "MMAL_PARAMETER_INT32_T" 'classname)
	(#.(swig-lispify "hdr" 'slotname) :pointer)
	(#.(swig-lispify "value" 'slotname) :int))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_INT32_T" 'classname))

(cl:export '#.(swig-lispify "hdr" 'slotname))
(cl:export '#.(swig-lispify "value" 'slotname))

(cffi:defctype #.(swig-lispify "MMAL_PARAMETER_INT32_T" 'typename)
  (:struct #.(swig-lispify "MMAL_PARAMETER_INT32_T" 'classname)))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_INT32_T" 'typename))

(cffi:defcstruct #.(swig-lispify "MMAL_PARAMETER_RATIONAL_T" 'classname)
	(#.(swig-lispify "hdr" 'slotname) :pointer)
	(#.(swig-lispify "value" 'slotname)
           (:struct #.(swig-lispify "MMAL_RATIONAL_T" 'classname))))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_RATIONAL_T" 'classname))

(cl:export '#.(swig-lispify "hdr" 'slotname))
(cl:export '#.(swig-lispify "value" 'slotname))

(cffi:defctype #.(swig-lispify "MMAL_PARAMETER_RATIONAL_T" 'typename)
  (:struct #.(swig-lispify "MMAL_PARAMETER_RATIONAL_T" 'classname)))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_RATIONAL_T" 'typename))

(cffi:defcstruct #.(swig-lispify "MMAL_PARAMETER_BOOLEAN_T" 'classname)
	(#.(swig-lispify "hdr" 'slotname) :pointer)
	(#.(swig-lispify "enable" 'slotname) :int))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_BOOLEAN_T" 'classname))

(cl:export '#.(swig-lispify "hdr" 'slotname))
(cl:export '#.(swig-lispify "enable" 'slotname))

(cffi:defctype #.(swig-lispify "MMAL_PARAMETER_BOOLEAN_T" 'typename)
  (:struct #.(swig-lispify "MMAL_PARAMETER_BOOLEAN_T" 'classname)))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_BOOLEAN_T" 'typename))

(cffi:defcstruct #.(swig-lispify "MMAL_PARAMETER_STRING_T" 'classname)
	(#.(swig-lispify "hdr" 'slotname) :pointer)
	(#.(swig-lispify "str" 'slotname) :pointer))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_STRING_T" 'classname))

(cl:export '#.(swig-lispify "hdr" 'slotname))
(cl:export '#.(swig-lispify "str" 'slotname))

(cffi:defctype #.(swig-lispify "MMAL_PARAMETER_STRING_T" 'typename)
  (:struct #.(swig-lispify "MMAL_PARAMETER_STRING_T" 'classname)))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_STRING_T" 'typename))

(cffi:defcstruct #.(swig-lispify "MMAL_PARAMETER_BYTES_T" 'classname)
	(#.(swig-lispify "hdr" 'slotname) :pointer)
	(#.(swig-lispify "data" 'slotname) :pointer))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_BYTES_T" 'classname))

(cl:export '#.(swig-lispify "hdr" 'slotname))
(cl:export '#.(swig-lispify "data" 'slotname))

(cffi:defctype #.(swig-lispify "MMAL_PARAMETER_BYTES_T" 'typename)
  (:struct #.(swig-lispify "MMAL_PARAMETER_BYTES_T" 'classname)))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_BYTES_T" 'typename))

(cl:defconstant #.(swig-lispify "MMAL_FIXED_16_16_ONE" 'constant)
  (cl:ash 1 16))
(cl:export '#.(swig-lispify "MMAL_FIXED_16_16_ONE" 'constant))

(cffi:defcstruct #.(swig-lispify "MMAL_PARAMETER_SCALEFACTOR_T" 'classname)
	(#.(swig-lispify "hdr" 'slotname) :pointer)
	(#.(swig-lispify "scale_x" 'slotname) :unsigned-int)
	(#.(swig-lispify "scale_y" 'slotname) :unsigned-int))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_SCALEFACTOR_T" 'classname))

(cl:export '#.(swig-lispify "hdr" 'slotname))
(cl:export '#.(swig-lispify "scale_x" 'slotname))
(cl:export '#.(swig-lispify "scale_y" 'slotname))

(cffi:defctype #.(swig-lispify "MMAL_PARAMETER_SCALEFACTOR_T" 'typename)
  (:struct #.(swig-lispify "MMAL_PARAMETER_SCALEFACTOR_T" 'classname)))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_SCALEFACTOR_T" 'typename))

(cffi:defcenum #.(swig-lispify "MMAL_PARAM_MIRROR_T" 'enumname)
	#.(swig-lispify "MMAL_PARAM_MIRROR_NONE" 'enumvalue :keyword)
	#.(swig-lispify "MMAL_PARAM_MIRROR_VERTICAL" 'enumvalue :keyword)
	#.(swig-lispify "MMAL_PARAM_MIRROR_HORIZONTAL" 'enumvalue :keyword)
	#.(swig-lispify "MMAL_PARAM_MIRROR_BOTH" 'enumvalue :keyword))
(cl:export '#.(swig-lispify "MMAL_PARAM_MIRROR_T" 'enumname))

(cffi:defcstruct #.(swig-lispify "MMAL_PARAMETER_MIRROR_T" 'classname)
	(#.(swig-lispify "hdr" 'slotname) :pointer)
	(#.(swig-lispify "value" 'slotname)
           #.(swig-lispify "MMAL_PARAM_MIRROR_T" 'enumname)))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_MIRROR_T" 'classname))

(cl:export '#.(swig-lispify "hdr" 'slotname))
(cl:export '#.(swig-lispify "value" 'slotname))

(cffi:defctype #.(swig-lispify "MMAL_PARAMETER_MIRROR_T" 'typename)
  (:struct #.(swig-lispify "MMAL_PARAMETER_MIRROR_T" 'classname)))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_MIRROR_T" 'typename))

(cffi:defcstruct #.(swig-lispify "MMAL_PARAMETER_URI_T" 'classname)
	(#.(swig-lispify "hdr" 'slotname) :pointer)
	(#.(swig-lispify "uri" 'slotname) :pointer))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_URI_T" 'classname))

(cl:export '#.(swig-lispify "hdr" 'slotname))
(cl:export '#.(swig-lispify "uri" 'slotname))

(cffi:defctype #.(swig-lispify "MMAL_PARAMETER_URI_T" 'typename)
  (:struct #.(swig-lispify "MMAL_PARAMETER_URI_T" 'classname)))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_URI_T" 'typename))

(cffi:defcstruct #.(swig-lispify "MMAL_PARAMETER_ENCODING_T" 'classname)
	(#.(swig-lispify "hdr" 'slotname) :pointer)
	(#.(swig-lispify "encoding" 'slotname) :pointer))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_ENCODING_T" 'classname))

(cl:export '#.(swig-lispify "hdr" 'slotname))
(cl:export '#.(swig-lispify "encoding" 'slotname))

(cffi:defctype #.(swig-lispify "MMAL_PARAMETER_ENCODING_T" 'typename)
  (:struct #.(swig-lispify "MMAL_PARAMETER_ENCODING_T" 'classname)))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_ENCODING_T" 'typename))

(cffi:defcstruct #.(swig-lispify "MMAL_PARAMETER_FRAME_RATE_T" 'classname)
	(#.(swig-lispify "hdr" 'slotname) :pointer)
	(#.(swig-lispify "frame_rate" 'slotname)
           (:struct #.(swig-lispify "MMAL_RATIONAL_T" 'classname))))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_FRAME_RATE_T" 'classname))

(cl:export '#.(swig-lispify "hdr" 'slotname))
(cl:export '#.(swig-lispify "frame_rate" 'slotname))

(cffi:defctype #.(swig-lispify "MMAL_PARAMETER_FRAME_RATE_T" 'typename)
  (:struct #.(swig-lispify "MMAL_PARAMETER_FRAME_RATE_T" 'classname)))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_FRAME_RATE_T" 'typename))

(cffi:defcstruct #.(swig-lispify "MMAL_PARAMETER_CONFIGFILE_T" 'classname)
	(#.(swig-lispify "hdr" 'slotname) :pointer)
	(#.(swig-lispify "file_size" 'slotname) :unsigned-int))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_CONFIGFILE_T" 'classname))

(cl:export '#.(swig-lispify "hdr" 'slotname))
(cl:export '#.(swig-lispify "file_size" 'slotname))

(cffi:defctype #.(swig-lispify "MMAL_PARAMETER_CONFIGFILE_T" 'typename)
  (:struct #.(swig-lispify "MMAL_PARAMETER_CONFIGFILE_T" 'classname)))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_CONFIGFILE_T" 'typename))

(cffi:defcstruct #.(swig-lispify "MMAL_PARAMETER_CONFIGFILE_CHUNK_T"
                                 'classname)
	(#.(swig-lispify "hdr" 'slotname) :pointer)
	(#.(swig-lispify "size" 'slotname) :unsigned-int)
	(#.(swig-lispify "offset" 'slotname) :unsigned-int)
	(#.(swig-lispify "data" 'slotname) :pointer))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_CONFIGFILE_CHUNK_T" 'classname))

(cl:export '#.(swig-lispify "hdr" 'slotname))
(cl:export '#.(swig-lispify "size" 'slotname))
(cl:export '#.(swig-lispify "offset" 'slotname))
(cl:export '#.(swig-lispify "data" 'slotname))

(cffi:defctype #.(swig-lispify "MMAL_PARAMETER_CONFIGFILE_CHUNK_T" 'typename)
  (:struct #.(swig-lispify "MMAL_PARAMETER_CONFIGFILE_CHUNK_T" 'classname)))
(cl:export '#.(swig-lispify "MMAL_PARAMETER_CONFIGFILE_CHUNK_T" 'typename))
