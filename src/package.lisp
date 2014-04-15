
(defpackage :pi-mmal
  (:use :cl)
  (:export :+mmal-version-major+
           :+mmal-version-minor+
           :+mmal-version+
           :mmal-version-to-major
           :mmal-version-to-minor)
  (:export :mmal-status-t
           :mmal-rect-t
           :mmal-rational-t
           :+mmal-time-unknown+
           :mmal-fourcc-t)
  (:export :mmal-component-private-t
           :mmal-component-t
           :mmal-component-create
           :mmal-component-create*
           :mmal-component-acquire
           :mmal-component-release
           :mmal-component-destroy
           :mmal-component-enable
           :mmal-component-disable))