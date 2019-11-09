(load "ex2-2.scm")
; 矩形面积和周长：
;     要矩形的长和宽

; 输入： 矩形
; 输出： 周长
;       面积

; length-of-rectangle
; width-of-rectangle

; 周长
(define (perimeter r)
    (let ((len (length-of-rectangle r))
            width (width-of-rectangle r))
        (* 2 (+ len width))))

; 面积
(define (area-rectangle r)
    (* (length-of-rectangle r)
        (width-of-rectangle r)))

; 长和宽
; (define (length-of-rectangle parameters)
;     body)

; (define (width-of-rectangle parameters)
;     body)


; 矩形的构造函数
(define (make-rectangle top-seg down-seg left-seg right-seg)
    (cons (cons top-seg down-seg)
          (cons left-seg right-seg)))

; 矩形选择函数
(define (top-seg-rectangle r)
    (car (car r)))

(define (down-seg-rectangle r)
    (cdr (car r)))

(define (left-seg-rectangle r)
    (car (cdr r)))

(define (left-seg-rectangle r)
    (cdr (cdr r)))


; r 是矩形的坐标， top 是上线段左右的坐标，拿到top，得到start, end, 根据start,end 得到他们的x坐标
; 根据左右坐标，算出长度
(define (length-of-rectangle r)
    (let ((top (top-seg-rectangle r)))
        (let ((start (start-segment top))
              (end (end-segment top)))
            (- (x-point end)
               (x-point start)))))

(define (width-of-rectangle r)
    (let ((left (left-seg-rectangle r)))
        (let ((start (start-segment left))
              (end (end-segment left)))
            (- (x-point end)
               (x-point start)))))

(define top (make-segment (makepoint 1 4) (make-point 4 4)))
(define down (make-segment (makepoint 1 2) (make-point 4 2)))
(define left (make-segment (makepoint 1 2) (make-point 1 4)))
(define right (make-segment (makepoint 4 2) (make-point 4 4)))

(define rectangle (make-rectangle top down left right))


(define p perimeter(rectangle))
(define a area-rectangle(rectangle))