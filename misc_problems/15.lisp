(defun square_up(number)
    (* number number))

(defun square_list(list)
    (cond
        ((null list) nil)
        
        (T
         (mapcar 'square_up list))))
