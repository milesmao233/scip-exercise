(define x (list (list 1 2) (list 3 4)))

; x
; ((1 2) (3 4))

; (reverse x)
; ((3 4) (1 2))

; (deep-reverse x)
; ((4 3) (2 1))

(define (reverse items)
    (define (reverse-iter a reverse-list)
        (if (null? a)
            reverse-list
            (reverse-iter (cdr a) (cons (car a) reverse-list))))
    (reverse-iter items '()))

(define (reverse-recur items)
    (if (null? items)
        '()
        (append (reverse-recur (cdr items)) (list (car items)))))

(define (deep-reverse tree)
    (cond ((null? tree)         ; 空树
            '())
          ((not (pair? tree))   ; 叶子
            tree)
          (else
            (reverse (list (deep-reverse (car tree))            ; 递归地逆序左右子树
                           (deep-reverse (cadr tree)))))))
