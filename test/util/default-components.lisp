
(in-package :pi-mmal-test)

(fiveam:def-suite mmal-util-default-components-exports
    :description "Test that the pi-mmal package exports the
                  expected symbols from util/mmal_default_components.h.")

(fiveam:in-suite mmal-util-default-components-exports)

(fiveam:test mmal-component-default-container-test
  (check-external-constant :+mmal-component-default-container-reader+
                           "container_reader")
  (check-external-constant :+mmal-component-default-container-writer+
                           "container_writer"))

(fiveam:test mmal-component-default-test
  (check-external-constant :+mmal-component-default-video-decoder+
                           "vc.rll.video_decode")
  (check-external-constant :+mmal-component-default-video-encoder+
                           "vc.rll.video_encode")
  (check-external-constant :+mmal-component-default-video-renderer+
                           "vc.rll.video_render")
  (check-external-constant :+mmal-component-default-image-decoder+
                           "vc.rll.image_decode")
  (check-external-constant :+mmal-component-default-image-encoder+
                           "vc.rll.image_encode")
  (check-external-constant :+mmal-component-default-camera+
                           "vc.rll.camera")
  (check-external-constant :+mmal-component-default-video-converter+
                           "vc.video_convert")
  (check-external-constant :+mmal-component-default-splitter+
                           "vc.splitter")
  (check-external-constant :+mmal-component-default-scheduler+
                           "vc.scheduler")
  (check-external-constant :+mmal-component-default-video-injecter+
                           "vc.video_inject")
  (check-external-constant :+mmal-component-default-video-splitter+
                           "vc.rll.video_splitter")
  (check-external-constant :+mmal-component-default-audio-decoder+
                           "none")
  (check-external-constant :+mmal-component-default-audio-renderer+
                           "vc.rll.audio_render")
  (check-external-constant :+mmal-component-default-miracast+
                           "vc.miracast"))