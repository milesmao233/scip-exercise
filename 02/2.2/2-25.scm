(1 3 (5 7) 9)
x = (list 1 3 (list 5 7) 9)
(cdr (car (cdr (cdr x))))

((7))
y = (list (list 7))
(car (car y))

(1 (2 (3 (4 (5 (6 7))))))
z = (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7))))))
(cdr (cdr (cdr (cdr (cdr (cdr z))))))