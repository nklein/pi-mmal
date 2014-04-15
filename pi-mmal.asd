
(asdf:defsystem #:pi-mmal
    :author "Patrick Stein <pat@nklein.com>"
    :license "Public Domain"
    :depends-on (#:cffi)
    :components
    ((:module "src"
      :components ((:file "package")
                   (:file "mmal" :depends-on ("package"))
                   (:file "types" :depends-on ("package"))
                   (:file "component" :depends-on ("package"
                                                   "mmal"
                                                   "types"))))))

(defmethod asdf:perform ((op asdf:test-op)
                         (system (eql (asdf:find-system :pi-mmal))))
  (let ((test-package :pi-mmal-test))
    (asdf:load-system test-package)
    (funcall (symbol-function (find-symbol (symbol-name :run-all-tests)
                                           test-package)))))

(asdf:defsystem #:pi-mmal-test
    :author "Patrick Stein <pat@nklein.com>"
    :license "Public Domain"
    :depends-on (#:pi-mmal #:fiveam)
    :components
    ((:module "test"
      :components ((:file "package")
                   (:file "mmal" :depends-on ("package"))
                   (:file "types" :depends-on ("package"))
                   (:file "component" :depends-on ("package"))))))