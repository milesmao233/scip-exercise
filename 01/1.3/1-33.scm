(load "p33-prime.scm")

; 递归
(define (filtered-accumulate-recur combine null-value term a next b valid?)
    (if (> a b)
        null-value
        (let ((rest-terms (filtered-accumulate combine
                            null-value
                            term
                            (next a)
                            next
                            b
                            valid?)
                )
            )
            (if (valid? a)
                (combine (term a) rest-terms)
                rest-terms
            )
        )
    )
)

; 迭代
(define (filtered-accumulate-iter combine null-value term a next b valid?)
    ((define (iter i result)
        (cond ((> i b) result)
            ((valid? i) (iter (next i) (combine (term i) result)))
            (else (iter (next i) result)))))
    (iter a null-value))


(define (primes-sum a b)
    (filtered-accumulate-recur + 
                         0
                         (lambda (x) x)
                         a
                         (lambda (i) (+ i 1))
                         b
                         prime?))