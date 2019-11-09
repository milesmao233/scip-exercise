(define (fast-expt b n)
    (fast-expt-iter b n 1))

(define (fast-expt-iter b n answer)
    (cond ((= n 0)
            answer)
            ((even? n)
                (fast-expt-iter (square b) (/ n 2) answer))
            ((odd? n)
                (fast-expt-iter b (- n 1) (* b answer)))))

(define (even? n)
    (= (remainder n 2) 0))

(define (odd? n)
    (= (remainder n 2) 1))

(fast-expt 3 2)