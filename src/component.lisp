(in-package #:pi-mmal)

(cffi:defctype #.(swig-lispify "MMAL_COMPONENT_PRIVATE_T" 'typename) :pointer)
(cl:export '#.(swig-lispify "MMAL_COMPONENT_PRIVATE_T" 'typename))

(cffi:defcstruct #.(swig-lispify "MMAL_COMPONENT_T" 'classname)
	(#.(swig-lispify "priv" 'slotname) :pointer)
	(#.(swig-lispify "userdata" 'slotname) :pointer)
	(#.(swig-lispify "name" 'slotname) :string)
	(#.(swig-lispify "is_enabled" 'slotname) :unsigned-int)
	(#.(swig-lispify "control" 'slotname) :pointer)
	(#.(swig-lispify "input_num" 'slotname) :unsigned-int)
	(#.(swig-lispify "input" 'slotname) :pointer)
	(#.(swig-lispify "output_num" 'slotname) :unsigned-int)
	(#.(swig-lispify "output" 'slotname) :pointer)
	(#.(swig-lispify "clock_num" 'slotname) :unsigned-int)
	(#.(swig-lispify "clock" 'slotname) :pointer)
	(#.(swig-lispify "port_num" 'slotname) :unsigned-int)
	(#.(swig-lispify "port" 'slotname) :pointer)
	(#.(swig-lispify "id" 'slotname) :unsigned-int))
(cl:export '#.(swig-lispify "MMAL_COMPONENT_T" 'classname))

(cl:export '#.(swig-lispify "priv" 'slotname))
(cl:export '#.(swig-lispify "userdata" 'slotname))
(cl:export '#.(swig-lispify "name" 'slotname))
(cl:export '#.(swig-lispify "is_enabled" 'slotname))
(cl:export '#.(swig-lispify "control" 'slotname))
(cl:export '#.(swig-lispify "input_num" 'slotname))
(cl:export '#.(swig-lispify "input" 'slotname))
(cl:export '#.(swig-lispify "output_num" 'slotname))
(cl:export '#.(swig-lispify "output" 'slotname))
(cl:export '#.(swig-lispify "clock_num" 'slotname))
(cl:export '#.(swig-lispify "clock" 'slotname))
(cl:export '#.(swig-lispify "port_num" 'slotname))
(cl:export '#.(swig-lispify "port" 'slotname))
(cl:export '#.(swig-lispify "id" 'slotname))

(cffi:defctype #.(swig-lispify "MMAL_COMPONENT_T" 'typename)
  (:struct #.(swig-lispify "MMAL_COMPONENT_T" 'classname)))
(cl:export '#.(swig-lispify "MMAL_COMPONENT_T" 'typename))

(cffi:defcfun ("mmal_component_create" #.(swig-lispify "mmal_component_create" 'function)) #.(swig-lispify "MMAL_STATUS_T" 'enumname)
  (name :string)
  (component :pointer))
(cl:export '#.(swig-lispify "mmal_component_create" 'function))

(cffi:defcfun ("mmal_component_acquire" #.(swig-lispify "mmal_component_acquire" 'function)) :void
  (component :pointer))
(cl:export '#.(swig-lispify "mmal_component_acquire" 'function))

(cffi:defcfun ("mmal_component_release" #.(swig-lispify "mmal_component_release" 'function)) #.(swig-lispify "MMAL_STATUS_T" 'enumname)
  (component :pointer))
(cl:export '#.(swig-lispify "mmal_component_release" 'function))

(cffi:defcfun ("mmal_component_destroy" #.(swig-lispify "mmal_component_destroy" 'function)) #.(swig-lispify "MMAL_STATUS_T" 'enumname)
  (component :pointer))
(cl:export '#.(swig-lispify "mmal_component_destroy" 'function))

(cffi:defcfun ("mmal_component_enable" #.(swig-lispify "mmal_component_enable" 'function)) #.(swig-lispify "MMAL_STATUS_T" 'enumname)
  (component :pointer))
(cl:export '#.(swig-lispify "mmal_component_enable" 'function))

(cffi:defcfun ("mmal_component_disable" #.(swig-lispify "mmal_component_disable" 'function)) #.(swig-lispify "MMAL_STATUS_T" 'enumname)
  (component :pointer))
(cl:export '#.(swig-lispify "mmal_component_disable" 'function))

#|
(defun mmal-component-output (component-ptr index)
  (check-type index (integer 0 *))
  (assert (< index (mmal-component-output-num component-ptr)))
  (let ((output-ptr (%mmal-component-slot-value component-ptr 'output)))
    (cffi:mem-aref output-ptr '(:struct mmal-port-t) index)))
|#
