;gnu clisp 2.49

; a) Write a function to return the product of two vectors. (dot product)

(defun dotProduct(A B)
    (cond
        ((AND (null A) (not (null B))) nil)
        
        ((AND (not (null A)) (null B)) nil)
        
        ((AND (null A) (null B)) 0)
        
        (T
         (+ (* (car A) (car B)) (dotProduct (cdr A) (cdr B))))))

; b) Write a function to return the depth of a list.

(defun getDepth(L)
    (cond
        ((null L) 0)
        
        ((atom L) 0)
        
        (T
         (+ 1 (apply 'max (mapcar 'getDepth L))))))

(defun getDepthAlt(L depth)
    (cond
        ((null L) depth)
        
        ((listp (car L)) (max (getDepthAlt (car L) (+ 1 depth)) (getDepthAlt (cdr L) depth)))
        
        (T
         (getDepthAlt (cdr L) depth))))

; c) Write a function to sort a linear list without keeping the duble values.

(defun getMin(L)
    (cond
        ((null L) nil)
        
        ((null (cdr L)) (car L))
        
        ((< (car L) (car (cdr L))) (getMin (cons (car L) (cdr (cdr L)))))
        
        (T
         (getMin (cdr L)))))

(defun removeAllOcc(L X)
    (cond
        ((null L) nil)
        
        ((equal (car L) X) (removeAllOcc (cdr L) X))
        
        (T
         (cons (car L) (removeAllOcc (cdr L) X)))))

(defun sortedList(L)
    (cond
        ((null L) nil)
        
        (T
         (cons (getMin L) (sortedList (removeAllOcc L (getMin L)))))))

; d) Write a function to return the intersection of two sets. (=> we don't need to worry about duplicates)

(defun inter(L1 L2)
    (cond
         ((null L1) nil)
     
         ((null L2) nil)
        
         ((member (car L1) L2) (cons (car L1) (inter (cdr L1) L2)))
        
         (T
          (inter (cdr L1) L2))))





    





