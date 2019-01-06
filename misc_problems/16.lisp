(defun prod_nonlin(l)
    (cond
        ((numberp l) l)
        
        ((atom l) 1)
        
        (T
         (apply '* (mapcar 'prod_nonlin l)))))
