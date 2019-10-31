; 递归版本
(define (product-recursion term a next b)
    (if (> a b)
        1
        (* (term a)
            (product term (next a) next b))))

; 迭代版本
(define (product-iter term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (* (term a) result))))
    (iter a 1))
        