
; 求导

(define (deriv g) (lambda (x) (/ (- (g (+ x dx)) (g x)) dx)))
(define dx 0.0001)
(define (cube x) (* x x x ))

(define (newtontrans g) (lambda (x) (- x (/ (g x) ((deriv g) x)))))
(define (newtonmethod g guess) 
    (findx (newtontrans g) guess)
)
(define (sqrt x) (newtonmethod (lambda (y) (- (* y y) x)) 1))
(define tol 0.0001)
(define (findx f index)
    (define (enough v1 v2)
        (< (abs (- v1 v2)) tol))
    (define (try guess)
        (let ((next (f guess)))
        (if (enough next guess) next (try next)))
    )
    (try index)
)
(define (cubic a b c) 
(lambda (x) (+ (cube x) (* a x x) (* b x) c)))