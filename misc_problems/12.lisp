(defun deleteElement(list elem)
    (cond
        ((null list) nil)
        
        ((listp (car list)) (cons (deleteElement (car list) elem) (deleteElement (cdr list) elem)))
        
        ((AND (numberp (car list)) (EQUAL (car list) elem)) (deleteElement (cdr list) elem))
        
        ((AND (numberp (car list)) (not (EQUAL (car list) elem))) (cons (car list) (deleteElement (cdr list) elem)))))
