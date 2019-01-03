; a) A linear list is given. Eliminate from the list all elements from N to N steps, N-given.

(defun elimNstep(list Idx N)
    (cond
        ((null list) nil)
        
        ((equal 0 (mod Idx N)) (elimNstep (cdr list) (+ 1 Idx) N))
        
        (T
         (cons (car list) (elimNstep (cdr list) (+ 1 Idx) N)))))

; b) Write a function to test if a linear list of integer numbers have a "valley" aspect. 

(defun isValleyUp(list)
    (cond
        ((null list) nil)
        
        ((null (cdr list)) T)
        
        ((< (car list) (car (cdr list))) (isValleyUp (cdr list)))))

(defun isValleyDown(list)
    (cond 
        ((null list) nil)

        ((null (cdr list)) T)
    
        ((> (car list) (car (cdr list))) (isValleyDown (cdr list)))

        ((< (car list) (car (cdr list))) (isValleyUp (cdr list)))))

(defun isValley(list)
    (cond
        ((null list) nil)
        
        ((> (car list) (car (cdr list))) (isValleyDown (cons (car list) (cdr list))))))

; c) Build a function that returns the minimum numeric atom from a list, at any level.
 
(defun minimum (list)
    (cond
       ((null list)  nil)

       ((null (cdr list))        
        (car list))

       ((< (car list) (car (cdr list)))  
        (minimum (cons (car list) (cdr (cdr list)))))

       (t                              
        (minimum (cdr list))))) 

(defun flatten (l)
    (cond 
        ((null l)  nil)
        ((atom (car l)) 
          (cons (car l) (flatten (cdr l))))
        (t 
          (append (flatten (car l)) (flatten (cdr l))))))

(defun mainFct (numbers)
    (cond
        ((null numbers) nil)
        (t
           (minimum (flatten numbers)))))

; d) Write a function that deletes from a linear list all occurances of the maximum element.

(defun maxList (list)
    (cond
        ((null list) nil)
     
        ((null (cdr list)) (car list))

        ((> (car list) (car (cdr list)))
         (maxList (cons (car list) (cdr (cdr list)))))

        (t
         (maxList (cdr list)))))
 
(defun removeElem (li n)
    (cond
        ((null li) nil)

        ((equal (car li) n) (removeElem (CDR li) n))

        (T
         (cons (car li) (removeElem (cdr li) n)))))

(defun removeMax(L)
    (cond
        ((null L) nil)

        (T
         (removeElem L (maxList L)))))










