(define (square x) (* x x))
(define (sum-of-squares x y)
    (+ (square x) (square y)))

(define (bigger x y)
    (if (> x y)
        x
        y))


(define (smaller x y)
    if (> x y)
        y
        x)

(define bigger (bigger x y))
(define another-bigger (bigger (smaller x y) z))

(define (bigger-sum-of-squares x y z)
    (sum-of-squares (bigger x y)
                    (bigger (smaller x y) z)))