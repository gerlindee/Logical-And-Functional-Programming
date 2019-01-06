
(defun minimumElement(list)
    (cond 
        ((null list) nil)
        
        ((null (cdr list)) (car list))
        
        ((< (car list) (car (cdr list))) (minimumElement (cons (car list) (cdr (cdr list)))))
        
        (T
         (minimumElement (cdr list)))))
