(defun interclasare(left right)
    (cond
        ((AND (null left) (null right)) nil)
        
        ((null left) right)
        
        ((null right) left)
        
        (( < (car left) (car right))
         (cons (CAR left) (interclasare (cdr left) right)))
        
        (( > (car left) (car right))
         (cons (car right) (interclasare left (cdr right))))
        
        (T
         (cons (car left) (interclasare (cdr left) (cdr right))))))

(print (interclasare '(1 2 3) '(2 3 4 5)))
