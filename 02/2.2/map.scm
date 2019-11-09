; (define (map proc items)
;     (if (null? items)
;         nil
;         (cons (proc (car items))
;               (map proc (cdr items)))))


(define (map proc list)
    (define (map-iter list result)
        (if (null? list)
            '()
            (map-iter (cdr list) (cons result
                                        (proc (car list))))))
    (map-iter list '()))

(define (scale-list s list)
    (map (lambda (item) (* item s))
          list))