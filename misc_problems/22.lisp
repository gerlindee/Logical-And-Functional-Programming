(defun replace_1(List)
    (cond
        ((NULL List) nil)
        
        ((AND (numberp (car List)) (EQUAL (mod (car List) 2) 0))
         (cons (+ (car List) 1) (replace_1 (cdr List))))
        
        ((listp (car List)) (cons (replace_1 (car List)) (replace_1 (cdr List))))
        
        (T
         (cons (car List) (replace_1 (cdr List))))))

(defun replace_2(List)
    (cond
        ((null List) nil)
        
        ((AND (numberp List) (EQUAL (mod List 2) 0)) (LIST (+ List 1)))
        
        ((AND (numberp List) (EQUAL (mod List 2) 1)) (LIST List))
        
        ((ATOM List) (LIST List))
        
        (T
         (LIST (apply 'append (mapcar 'replace_2 List))))))

(PRINT (replace_1 '(1 s 4 (2 f (7)))))
(PRINT (replace_2 '(1 s 4 (2 f (7)))))
