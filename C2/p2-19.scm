(define (cc amount coin-values)
    (cond ((= amount 0) 1)
        ((or (< amount 0) (no-more? coin-values)) 0)
        (else 
            (+ (cc amount (except-first-denomination coin-values)) (cc (- amount (first-denomination coin-values)) coin-values))
        )
    )
)
(define us-coins (list 50 25 10 1 5 ))
(define uk-coins (list 100 50 20 10 5 2 1 0.5))
(define (except-first-denomination list1) (cdr list1))
(define (first-denomination list1)(car list1))
(define (no-more? list1) (= (length list1) 0))

(define (length items) 
    (define (length-iter a count)
        (if (null? a) count (length-iter (cdr a) (+ count 1)))
    )
    (length-iter items 0)
)