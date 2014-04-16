
(asdf:defsystem #:pi-mmal
    :author "Patrick Stein <pat@nklein.com>"
    :license "Public Domain"
    :depends-on (#:cffi)
    :components
    ((:module "src"
      :components ((:file "package")
                   (:file "mmal" :depends-on ("package"))
                   (:file "types" :depends-on ("package"))
                   (:file "format" :depends-on ("package"
                                                "types"))
                   (:file "port" :depends-on ("package"
                                              "types"
                                              "format"))
                   (:file "component" :depends-on ("package"
                                                   "types"
                                                   "port"))
                   (:file "util/default-components"
                          :depends-on ("package"))))))

(defmethod asdf:perform ((op asdf:test-op)
                         (system (eql (asdf:find-system :pi-mmal))))
  (let ((test-package :pi-mmal-test))
    (asdf:load-system test-package)
    (funcall (symbol-function (find-symbol (symbol-name :run-all-tests)
                                           test-package)))))
