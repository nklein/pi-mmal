
(in-package :pi-mmal-test)

(fiveam:def-suite mmal-buffer-exports
    :description "Test that the pi-mmal package exports the
                  expected symbols from mmal_buffer.h.")

(fiveam:in-suite mmal-buffer-exports)

(fiveam:test mmal-buffer-header-video-specific-t-test
  (check-external-struct :mmal-buffer-header-video-specific-t 40))

(fiveam:test mmal-buffer-header-type-specific-t-test
  (check-external-union :mmal-buffer-header-type-specific-t 40))

(fiveam:test mmal-buffer-header-private-t-test
  (check-external-struct :mmal-buffer-header-private-t 0))

(fiveam:test mmal-buffer-header-t-test
  (check-external-struct :mmal-buffer-header-t 56))
