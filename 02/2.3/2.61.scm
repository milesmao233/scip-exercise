(define (element-of-set? x set)
    (cond ((null? set) false)
        ((= x (car set)) true)
        ((< x (car set)) false)
        (else (element-of-set? x (cdr set)))))


(define (adjoin-set x set)
    (cond ((null? set) (cons x set))
          ((= (car set) x) set)
          ((> (car set) x) (cons x set))
          (else (cons (car set) (adjoin-set x (cdr set))))))