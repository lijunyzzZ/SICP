(define (squarelist items)
(define (iter things answer)
    (if (null? things) answer (iter (cdr things) (cons (square (car things)) answer)))
)
(iter items '())
)
(define (square x) (* x x))
(define list1 (list 1 2 3))