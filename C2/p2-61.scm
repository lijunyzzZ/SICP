(define (adjoin x set)
(let ((a (car set)))
    (cond ((eq? a x) set)
    ((< a x) (cons a set))
    ((> a x) (cons a (adjoin x (cdr set))))
    )
)
)