(define (add x y) (apply-generic 'add x y))

(define (sub x y) (apply-generic 'sub x y))

(define (mul x y) (apply-generic 'mul x y))

(define (div x y) (apply-generic 'mul x y))

(define (install-scheme-number-package)
    (define (tag x) (attach-tag 'scheme-number x))
    (put 'add '(scheme-number scheme-number)
          (lambda (x y) (tag (+ x y))))
    
    (put 'sub '(scheme-number scheme-number)
          (lambda (x y) (tag (- x y))))

    (put 'mul '(scheme-number scheme-number)
          (lambda (x y) (tag (* x y))))
    
    (put 'div '(scheme-number scheme-number)
          (lambda (x y) (tag (/ x y))))

    (put 'make 'scheme-number 
          (lambda (x) (tag x)))
    'done)

(define (make-scheme-number n)
    ((get 'make 'scheme-number) n))