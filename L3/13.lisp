
; 13. Write a function that returns the depth of a tree represented as (2)

;                        0, atom(l1,..,ln) is True, meaning we have reached a leaf
; DepthTree(l2,...,ln) = 1 + the length of the longest route from the route to a leaf


(defun DepthTree (Tree)
  (cond
    ((atom Tree) 0)

    (T
     (+ 1 (apply 'max (mapcar 'DepthTree Tree))))))
