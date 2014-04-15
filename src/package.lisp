
(defpackage :pi-mmal
  (:use :cl)
  (:export :+mmal-version-major+        ; mmal.h
           :+mmal-version-minor+
           :+mmal-version+
           :mmal-version-to-major
           :mmal-version-to-minor)
  (:export :mmal-status-t               ; mmal_types.h
           :mmal-rect-t
           :mmal-rational-t
           :+mmal-time-unknown+
           :mmal-fourcc-t)
  (:export :mmal-port-type-t            ; mmal_port.h
           :+mmal-port-capability-passthrough+
           :+mmal-port-capability-allocation+
           :+mmal-port-capability-supports-event-format-change+
           :mmal-port-private-t
           :mmal-port-t)
  (:export :mmal-component-private-t    ; mmal_components.h
           :mmal-component-t
           :mmal-component-create
           :mmal-component-create*
           :mmal-component-acquire
           :mmal-component-release
           :mmal-component-destroy
           :mmal-component-enable
           :mmal-component-disable))