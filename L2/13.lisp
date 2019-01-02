; 13. For a given tree of type (2) return the path from the root node to a certain given node X

;                         [], if n=0
; elimNils(l1,l2,..,ln) = elimNils(l2,..,ln), if l1 = nil
;                         l1 U elimNils(l2,..,ln), otherwise

(defun elimNils(L) 
  (cond
   ((null L) NIL)
   
   ((null (car L))
    (elimNils(cdr L)))
   
   (T
    (cons (car L) (elimNils(cdr L))))))

;                           nil, if n=0
; findPath(l1,l2,..,ln,X) = [X], if l1=X
;                           nil, if [l1], meaning we are in a leaf of the tree that is not equal to the one we are searching for => wrong path
;                           (tbc)

(defun findPath(Tree X)
  (cond
   ((equal X (car Tree))
    (list X))

   ((null (cdr Tree)) nil)

   (T
    (setq result (elimNils (mapcar #' (lambda (next) (findPath next X)) (cdr Tree))))
    (if (not (null result))
        (cons (car Tree) (car result))))))
