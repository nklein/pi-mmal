(in-package #:pi-mmal)

(cl:defun string->word (string)
  (cl:let ((shift 0))
    (cl:reduce (cl:lambda (acc ch)
                 (cl:let ((acc (cl:logior acc
                                          (cl:ash (cl:char-code ch)
                                                  shift))))
                   (cl:incf shift 8)
                   acc))
               string
               :initial-value 0)))

;;;SWIG wrapper code starts here

(cl:defun swig-lispify (name flag cl:&optional (package cl:*package*))
  (cl:labels ((helper (lst last rest cl:&aux (c (cl:car lst)))
                (cl:cond
                  ((cl:null lst)
                   rest)
                  ((cl:upper-case-p c)
                   (helper (cl:cdr lst) 'upper
                           (cl:case last
                             ((lower digit) (cl:list* c #\- rest))
                             (cl:t (cl:cons c rest)))))
                  ((cl:lower-case-p c)
                   (helper (cl:cdr lst)
                           'lower
                           (cl:cons (cl:char-upcase c) rest)))
                  ((cl:digit-char-p c)
                   (helper (cl:cdr lst) 'digit
                           (cl:case last
                             #+not((upper lower) (cl:list* c #\- rest))
                             (cl:t (cl:cons c rest)))))
                  ((cl:char-equal c #\_)
                   (helper (cl:cdr lst) '_ (cl:cons #\- rest)))
                  (cl:t
                   (cl:error "Invalid character: ~A" c)))))
    (cl:let ((fix (cl:case flag
                    ((constant enumvalue) "+")
                    (variable "*")
                    (cl:t ""))))
      (cl:intern
       (cl:concatenate
        'cl:string
        fix
        (cl:nreverse (helper (cl:concatenate 'cl:list name) cl:nil cl:nil))
        fix)
       package))))
