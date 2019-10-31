(load "1-33.scm")

(define (gcd a b)
    (if (= b 0)
        a
        (gcd b (remainder a b))))

(define (coprime? i n)
    (and (< i n) (= 1 (gcd i n))))


(define (product-of-coprimes n)
    (filtered-accumulate-recur *
                         1
                         (lambda (x) x)
                         1
                         (lambda (x) (+ x 1))
                         n
                         (lambda (x) (coprime? x n)))