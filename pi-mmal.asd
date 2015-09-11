
(asdf:defsystem #:pi-mmal
    :author "Patrick Stein <pat@nklein.com>"
    :license "Public Domain"
    :depends-on (#:cffi)
    :in-order-to ((asdf:test-op (asdf:load-op :pi-mmal-test)))
    :perform (asdf:test-op (o c)
               (uiop:symbol-call :pi-mmal-test :run-all-tests))
    :components
    ((:module "src"
      :serial t
      :components ((:file "package")
                   (:file "preamble")
                   (:file "mmal")
                   (:file "common")
                   (:file "types")
                   (:file "port")
                   (:file "component")
                   (:file "parameters")
                   (:file "metadata")
                   (:file "queue")
                   (:file "pool")
                   (:file "events")
                   (:file "format")
                   (:file "buffer")
                   (:file "util/default-components")
                   (:file "library")))))
