(defun rep(List)
    (cond
        ((null List) nil)
        
        ((AND (numberp (car List)) (EQUAL (mod (car List) 2) 0)) (cons (+ (car List) 1) (rep (cdr List))))
        
        ((AND (numberp (car List)) (EQUAL (mod (car List) 2) 1)) (cons (car List) (rep (cdr List))))
        
        ((listp (car List)) (cons (rep (car List)) (rep (cdr List))))
        
        (T
         (cons (car List) (rep (cdr List))))))

(print (rep '(1 s 4 (2 f (7)))))
