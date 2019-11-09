(define (car-n seqs)
    (map car seqs))

(define (cdr-n seqs)
    (map cdr seqs))

(define (accumulate-n op init seqs)
    (if (null? (car seqs))
        '()
        (cons (accumulate op init (car-n seqs))
              (accumulate op init (cdr-n seqs)))))