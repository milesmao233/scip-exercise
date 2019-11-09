(define (accumulate op initial sequence)
    (if (null? sequence)
        initial
        (op (car sequence)
            (accumulate op initial (cdr sequence)))))

(define (map p sequence)
    (if (null? sequence)
        '()
        (cons (p (car sequence))
              (map p (cdr sequence)))))


(define (map p sequence)
    (accumulate (lambda (x y) <??>)
                '()
                sequence))

; accumulate是累积工作，accumulate的第一个参数,  x 是拿出一个值， y 是剩下的继续递归取值
(define (map p sequence)
    (accumulate (lambda (x y) 
                    (cons (p x) y)) 
                '()
                sequence))


(define (append seq1 seq2)
    (accumulate cons
                seq2
                seq1))

; accumulate是累积工作，accumulate的第一个参数 x 是拿出一个值， y 是剩下的继续递归取值
(define (length sequence)
    (accumulate (lambda (x y) (+ 1 y))
                0
                sequence))