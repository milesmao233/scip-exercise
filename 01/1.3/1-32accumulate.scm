; 递归
(define (accumulate-recur combiner null-value term a next b)
    (if (> a b)
        null- value
        (combiner (term a)
                    (accumulate combiner
                                null-value
                                term
                                (next a)
                                next
                                b))))

; 迭代
(define (accumulate-iter combiner null-value term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a)
                  (combiner (term a) result))))
    (iter a null-value))

(define (sum term a next b)
    (accumulate-recur +
                0
                term
                a
                next
                b))

(define (product term a next b)
    (accumulate-recur *
                1
                term
                a
                next
                b))