(define (filter predicate sequence)
    (cond ((null? sequence) nil)
          ((predicate) (car sequence))
            (cons (car sequence)
                  (filter predicate (cdr sequence))))
          (else (filter predicate (cdr sequence))))

(define (accumulate op initial sequence)
    (if (null? sequence)
        initial
        (op (car sequence)
            (accumulate op initial (cdr sequence)))))

(define (enumerate-interval low high)
    (if (> low high)
        nil
        (cons low (enumerate-interval (+ low 1) high)))

(define (enumerate-tree tree)
    (cond ((null? tree) nil)
          ((not (pair? tree)) (list tree))
          (else (append (enumerate-tree (car tree))
                        (enumerate-tree (cdr tree))))))



(define (sum-doo-squares tree)
    (accumulate +
                0
                (map square
                     (filter odd?
                             (enumerate-tree tree)))))

; enumerate -> fib -> even? -> cons
(define (even-fibs n)
    (accumulate cons
                nil
                (filter even?
                        (map fib
                             (enumerate-interval 0 n)))))

; enumberate -> fib -> square -> cons
(define (list-fib-square n)
    (accumulate cons
                nil
                (map square
                     (map fib
                          (enumerate-interval 0 n)))))

; filter odd -> square -> product
(define (product-of-squares-of-odd-elements sequence)
    (accumulate *
                1
                (map square
                     (filter odd?
                             sequence))))

(define (salary-of-highest-paid-programmer records)
    (accumulate max
                0
                (map salary
                     (filter programmer? records))))