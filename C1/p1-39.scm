(define (tancfi x k)
    (define (item index)
        (if (= index k)
         (/ (square x) (getIndex k))
         (- (getIndex index) (item (+ index 1)))
         )
    )
    (define (itemiter index reslut) 
        (if 
            (= index 0)
            reslut
            (itemiter (- index 1)(- (getIndex index) (/ (square x) reslut)))
            )
    )
    (itemiter (- k 1) (/ (square x) (getIndex k)))
)
(define (tancf x k) (/ x (tancfi x k)))
(define (getIndex n) (- (* 2 n ) 1))
(define (square n) (* n n))