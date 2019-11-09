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


; 递归版本
(define (expt b n)
    (if (= n 0)
        1
        (* b (expt b (- n 1)))))

; 循环版本
(define (expt b n)
    (expt-iter b n 1))

(define (expt-iter b counter product)
    (if (= counter 0)
        product
        (expt-iter b
                   (- counter 1)
                   (* b product))))