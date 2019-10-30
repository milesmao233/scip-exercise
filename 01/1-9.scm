(define (plus a b)
    (if (= a 0)
        b
        (inc (plus (dec a) b))))

(define (plus a b)
    (if (= a 0)
        b
        (plus (dec a) (inc b))))