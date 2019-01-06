(defun addEvery3rd(list pos elem)
    (cond
        ((null list) nil)
        
        ((EQUAL 0 (mod pos 3))
         (cons elem (addEvery3rd (cdr list) (+ 1 pos) elem)))
        
        (T
         (cons (car list) (addEvery3rd (cdr list) (+ 1 pos) elem)))))
