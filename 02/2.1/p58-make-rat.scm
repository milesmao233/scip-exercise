(define (gcd a b)
    (if (= b 0)
        a
        (gcd b (remainder a b))))

(define (make-rat n d)
    (let ((g (gcd n d)))
        (cons (/ n g) (/ d g))))

(define (numer x)
    (car x))

(define (denom x)
    (cdr x))

(define (print-rat x)
    (newline)
    (display (numer x))
    (display "/")
    (display (denom x)))

(define one-half (make-rat 1 2))
(print-rat one-half)