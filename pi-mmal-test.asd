
(asdf:defsystem #:pi-mmal-test
    :author "Patrick Stein <pat@nklein.com>"
    :license "Public Domain"
    :depends-on (#:pi-mmal #:fiveam)
    :components
    ((:module "test"
      :components ((:file "package")
                   (:file "mmal" :depends-on ("package"))
                   (:file "types" :depends-on ("package"))
                   (:file "port" :depends-on ("package"))
                   (:file "format" :depends-on ("package"))
                   (:file "component" :depends-on ("package"))))))
