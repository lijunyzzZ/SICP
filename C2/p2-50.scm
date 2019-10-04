(define (transform painter origin c1 c2)
    (lambda (frame)
        (let ((m (frame-coord-map frame))
            (let ((new-origin (m origin)))
                (painter (make-frame new-origin 
                    (sub-vect (m c1) new-origin)
                    (sub-vect (m c2) new-origin)
                ))
            )))
    )
)
(define (flip-horiz painter) 
    (transform painter
        (make-vect 0 1)
        (make-vect -1 1)
        (make-vect 0 2)
    )
)
(define (roate180 painter)
(transform painter
    (make-vect 1 1)
    (make-vect 0 1)
    (make-vect 1 0)
)

)
(define (roate270 painter)
(transform painter
(make-vect 1 0)
(make-vect 1 -1)
(make-vect 2 0)
))