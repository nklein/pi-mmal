
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
  (:export :mmal-es-type-t              ; mmal_format.h
           :mmal-video-format-t
           :mmal-audio-format-t
           :mmal-subpicture-format-t
           :mmal-es-specific-format-t
           :+mmal-es-format-flag-framed+
           :+mmal-encoding-unknown+
           :+mmal-encoding-variant-default+
           :mmal-es-format-t
           :mmal-format-alloc
           :mmal-format-free
           :mmal-format-extradata-alloc
           :mmal-format-copy
           :mmal-format-full-copy
           :+mmal-es-format-compare-flag-type+
           :+mmal-es-format-compare-flag-encoding+
           :+mmal-es-format-compare-flag-bitrate+
           :+mmal-es-format-compare-flag-flags+
           :+mmal-es-format-compare-flag-extradata+
           :+mmal-es-format-compare-flag-video-resolution+
           :+mmal-es-format-compare-flag-video-cropping+
           :+mmal-es-format-compare-flag-video-frame-rate+
           :+mmal-es-format-compare-flag-video-aspect-ratio+
           :+mmal-es-format-compare-flag-video-color-space+
           :+mmal-es-format-compare-flag-es-other+
           :mmal-format-compare)
  (:export :mmal-port-type-t            ; mmal_port.h
           :+mmal-port-capability-passthrough+
           :+mmal-port-capability-allocation+
           :+mmal-port-capability-supports-event-format-change+
           :mmal-port-private-t
           :mmal-port-t
           :mmal-port-format-commit
           :def-mmal-port-bh-cb
           :mmal-port-enable
           :mmal-port-disable)
  (:export :mmal-component-private-t    ; mmal_components.h
           :mmal-component-t
           :mmal-component-output-num
           :mmal-component-output
           :mmal-component-create
           :mmal-component-create*
           :mmal-component-acquire
           :mmal-component-release
           :mmal-component-destroy
           :mmal-component-enable
           :mmal-component-disable)
                                        ; util/mmal_default_components.h
  (:export :+mmal-component-default-container-reader+
           :+mmal-component-default-container-writer+
           :+mmal-component-default-video-decoder+
           :+mmal-component-default-video-encoder+
           :+mmal-component-default-video-renderer+
           :+mmal-component-default-image-decoder+
           :+mmal-component-default-image-encoder+
           :+mmal-component-default-camera+
           :+mmal-component-default-video-converter+
           :+mmal-component-default-splitter+
           :+mmal-component-default-scheduler+
           :+mmal-component-default-video-injecter+
           :+mmal-component-default-video-splitter+
           :+mmal-component-default-audio-decoder+
           :+mmal-component-default-audio-renderer+
           :+mmal-component-default-miracast+))