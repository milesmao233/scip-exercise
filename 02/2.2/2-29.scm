; a
(define (make-mobile left right)
    (list left right))

(define (make-branch length structure)
    (list length structure))

(define (left-branch mobile)
    (car mobile))

(define (right-branch mobile)
    (cadr mobile))

(define (branch-length branch)
    (car branch))

(define (branch-structure branch)
    (cadr branch))


; b
(define (total-weight mobile)
    (+ (branch-weight (left-branch mobile))
        (branch-weight (right-branch mobile))))

(define (branch-weight branch)
    (if (hangs-another-mobile? branch)
        (total-weight (branch-structure branch))
        (branch-structure branch)))

(define (hangs-another-mobile? branch)
    (pair? (branch-structure branch)))


; c
; 思路：
;     输入Mobile, 输出：左右子树是否一样重
;     一样重的条件： 
;     1. 左子树的length * 左子树structure 所有重量 == 右子树的length * 右子树structure 所有重量
;     2. 左子树自己平衡 （递归: branch 平衡进行递归）
;     3. 右子树自己平衡 （递归: branch 平衡进行递归）


(define (mobile-balance? mobile)
    (let ((left (left-branch mobile))
          (right (right-branch mobile)))
        (and                                        ; 必须同时满足以下三个条件，才是平衡的活动体
            (same-torque? left right)
            (branch-balance? left)
            (branch-balance? right))))

(define (same-torque? left right)
    (= (branch-torque left)
       (branch-torque right)))

(define (branch-torque branch)
    (* (branch-length branch)
       (branch-weight branch)))

(define (branch-balance? branch)
    (if (hangs-another-mobile? branch)              ; 如果分支上有子活动体
        (mobile-balance? (branch-structure branch))  ; 那么(递归地)检查子活动体的平衡性
        #t))

