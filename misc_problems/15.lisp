; not using mapcar

(defun square_list_1(list)
    (cond
        ((null list) nil)
        
        (T
         (cons (* (car list) (car list)) (square_list_1 (cdr list))))))

; using mapcar and another function

(defun square_up(number)
    (* number number))

(defun square_list(list)
    (cond
        ((null list) nil)
        
        (T
         (mapcar 'square_up list))))

; using mapcar and a lamnda expression


