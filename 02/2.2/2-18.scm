; (define (reverse list)
;     (define (reverse-iter a reverse-list)
;         (if (null? a)
;             reverse-list
;             (reverse-iter (cdr a) (cons (car a) reverse-list))))
;     (reverse-iter items '()))

(define (reverse-recur items)
    (if (null? items)
        '()
        (append (reverse-recur (cdr items)) (list (car items)))))

(reverse-recur (list 1 4 9 16 25))
; (25 16 9 4 1)