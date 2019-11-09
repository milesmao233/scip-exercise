 (define (for-each proc items) 
   (cond ((not (null? items)) 
            (proc (car items)) 
            (for-each proc (cdr items)))))

 (define (for-each proc items) 
   (if (not (null? items)) 
       ((proc (car items)) 
       (for-each proc (cdr items))))) 


(for-each (lambda (x) 
            (newline)
            (display x))
          (list 57 321 88))

(cons (cons (list 1 2) (list 3 4)) (list 5))