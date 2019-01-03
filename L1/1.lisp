; a) Write a function to return the n-th element of a list, or NIL if such an element does not exist.

(defun returnNth(L pos n)
    (cond 
        ((null L) NIL)
        
        ((equal pos n) (car L))
        
        (T
         (returnNth (cdr L) (+ 1 pos) n))))
         

; b) Write a function to check whether an atom E is a member of a list which is not necessarily linear.

(defun findE(L E)
    (cond 
        ((null L) nil)
        
        ((AND (atom (car L)) (equal E (car L))) T)
        
        ((listp (car L)) (findE (car L) E))
        
        (T
         (findE (cdr L) E))))

; c) Write a function to determine the list of all sublists of a given list, on any level.

(defun allSublists(L)
    (cond
        ((null L) nil)
        
        ((atom L) nil)
        
        (T
         (cons L (apply 'append (mapcar 'allSublists L))))))

; d) Write a function to transform a linear list into a set.

(defun removeAllOcc(L X)
    (cond
        ((null L) nil)
        
        ((equal X (car L)) (removeAllOcc (cdr L) X))
        
        (T
         (cons (car L) (removeAllOcc (cdr L) X)))))

(defun makeSet(L)
    (cond
        ((null L) nil)
        
        (T
         (cons (car L) (makeSet (removeAllOcc L (car L)))))))







