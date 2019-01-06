(defun is_odd(number)
    (cond
        ((EQUAL 0 (mod number 2)) nil)
        
        ((not (EQUAL 0 (mod number 2))) T)))

(defun prod_odd(list)
    (cond
        ((null list) 1)
        
        ((is_odd (car list)) (* (car list) (prod_odd (cdr list))))
        
        (T
         (* 1 (prod_odd (cdr list))))))
