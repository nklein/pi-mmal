(in-package :pi-mmal)

(cffi:defcstruct mmal-component-private-t)

(cffi:defcstruct mmal-component-t
  (priv (:pointer (:struct mmal-component-private-t)))
  (userdata (:pointer :void))
  (name :string)
  (is-enabled :uint32)
  (control (:pointer (:struct mmal-port-t)))
  (input-num :uint32)
  (input (:pointer (:pointer (:struct mmal-port-t))))
  (output-num :uint32)
  (output (:pointer (:pointer (:struct mmal-port-t))))
  (port-num :uint32)
  (port (:pointer (:pointer (:struct mmal-port-t))))
  (id :uint32))

(defun %mmal-component-slot-value (component-ptr slot)
  (cffi:foreign-slot-value component-ptr
                           '(:struct mmal-component-t)
                           slot))

(defun mmal-component-control (component-ptr)
  (%mmal-component-slot-value component-ptr 'control))

(defun mmal-component-output-num (component-ptr)
  (%mmal-component-slot-value component-ptr 'output-num))

(defun mmal-component-output (component-ptr index)
  (check-type index (integer 0 *))
  (assert (< index (mmal-component-output-num component-ptr)))
  (let ((output-ptr (%mmal-component-slot-value component-ptr 'output)))
    (cffi:mem-aref output-ptr '(:struct mmal-port-t) index)))

(cffi:defcfun "mmal_component_create" mmal-status-t
  (name :string)
  (component-ptr-ptr (:pointer (:pointer (:struct mmal-component-t)))))

(defun mmal-component-create* (name)
  (check-type name string)
  (cffi:with-foreign-object (component-ptr-ptr
                             '(:pointer (:struct mmal-component-t)))
    (let ((ret (mmal-component-create name component-ptr-ptr)))
      (values ret
              (when (= ret :mmal-success)
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
