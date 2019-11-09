(define (same-parity sample . others)
    (filter ((if (even? sample)
        even?
        ood?)
        (cons sample others))))


(same-parity 1 2 3 4 5 6 7)
; (1 3 5 7)

(same-parity 2 3 4 5 6 7)
; (2 4 6)

