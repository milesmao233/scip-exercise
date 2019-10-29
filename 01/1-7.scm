(define (sqrt-iter guess x)
    (if (good-enough? guess (improve guess x))
        (improve guess x)
        (sqrt-iter (improve guess x)
            x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

; 修改good-enough 不再比较x 与 guess 平方之间的差，而是比较新的guess 和 旧的guess之间的变化比率
; (define (good-enough? guess x)
;     (< (abs (- (square guess) x)) 0.001))

(define (good-enough? old-guess new-guess)
    (> 0.01 
        (/ (abs (- new-guess old-guess))
            old-guess)))

(define (sqrt x)
    (sqrt-iter 1.0 x))

(sqrt 9)