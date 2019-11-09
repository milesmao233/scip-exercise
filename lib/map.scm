(define (map p sequence)
    (if (null? sequence)
        '()
        (cons (p (car sequence))
              (map p (cdr sequence)))))


; accumulate是累积工作，x 是拿出一个值， y 是剩下的继续递归取值
(define (map p sequence)
    (accumulate (lambda (x y) 
                    (cons (p x) y)) 
                '()
                sequence))