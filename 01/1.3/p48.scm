(define (close-enough? x y)
    (< (abs (- x y)) 0.001))

(define (average a b)
    (/ (+ a b) 2))

(define tolerance 0.00001)

(define (fixed-point f first-guess)
    (define (try guess)
        (let ((next (f guess)))
            (if (close-enough? guess next)
                next
                (try next))))
    (try first-guess)
)

(define (average-damp f)
    (lambda (x) (average x (f x))))

(define (sqrt x)
    (fixed-point (average-damp (lambda (y) (/ x y)))
                  1.0))

(define (cube-root x)
    (fixed-point (average-damp (lambda (y) (/ x (square y))))
                  1.0))