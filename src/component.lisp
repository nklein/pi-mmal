(in-package :pi-mmal)

(cffi:defcstruct mmal-component-private-t)

(cffi:defcstruct mmal-component-t
  (priv (:pointer (:struct mmal-component-private-t)))
  (userdata (:pointer :void))
  (name :string)
  (is-enabled :uint32)
  (control (:pointer :void))
  (input-num :uint32)
  (input (:pointer (:pointer :void)))
  (output-num :uint32)
  (output (:pointer (:pointer :void)))
  (port-num :uint32)
  (port (:pointer (:pointer :void)))
  (id :uint32))

(cffi:defcfun "mmal_component_create" mmal-status-t
  (name :string)
  (component-ptr-ptr (:pointer (:pointer (:struct mmal-component-t)))))

(defun mmal-component-create* (name)
  (check-type name string)
  (cffi:with-foreign-object (component-ptr-ptr
                             '(:pointer (:struct mmal-component-t)))
    (let ((ret (mmal-component-create name component-ptr-ptr)))
      (values ret
              (when (= ret 0)
                (cffi:mem-aref component-ptr-ptr
                               '(:pointer (:struct mmal-component-t))))))))

(cffi:defcfun "mmal_component_acquire" mmal-status-t
  (component-ptr (:pointer (:struct mmal-component-t))))

(cffi:defcfun "mmal_component_release" mmal-status-t
  (component-ptr (:pointer (:struct mmal-component-t))))

(cffi:defcfun "mmal_component_destroy" mmal-status-t
  (component-ptr (:pointer (:struct mmal-component-t))))

(cffi:defcfun "mmal_component_enable" mmal-status-t
  (component-ptr (:pointer (:struct mmal-component-t))))

(cffi:defcfun "mmal_component_disable" mmal-status-t
  (component-ptr (:pointer (:struct mmal-component-t))))
