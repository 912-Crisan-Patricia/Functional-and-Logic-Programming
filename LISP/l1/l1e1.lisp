;a. return the n-th element or nil if it not exist 

(defun returnn (n l i)
    (cond
        ((> i n) nil)
        ((equal i n) (car l))
        (t (returnn n (cdr l) (+ i 1)))
    )
)

;(print (returnn 3 '(1 2 3 4 5 6) 1))

;b. write a function to check if an atom E is a member of a list 
; could be nonlinear

(defun check_atom (l e)
    (cond 
        ((null l) nil)
        ((and (atom (car l)) (equal (car l) e)) t)
        ((atom (car l)) (check_atom (cdr l) e))
        ((list (car l)) (or (check_atom (car l) e) (check_atom (cdr l) e)))
    )
)

;(print (check_atom '(1 2 (3 (a 5) (6 7)) 8 (9 10)) 'a))

; c) Write a function to determine the list of all sublists of a given list, on any level.
;  A sublist is either the list itself, or any element that is a list, at any level. Example:
;  (1 2 (3 (4 5) (6 7)) 8 (9 10)) => 5 sublists :
;  ( (1 2 (3 (4 5) (6 7)) 8 (9 10)) (3 (4 5) (6 7)) (4 5) (6 7) (9 10) )

(defun all_sublists (l)
    (cond
        ((atom l) nil)
        (T (apply 'append (list l) (mapcar 'all_sublists l)))
    )
)

;(print (all_sublists '(1 2 (3 (4 5) (6 7)) 8 (9 10))))

; d) Write a function to transform a linear list into a set.

(defun transform_set (l)
    (cond
        ((null l) nil)
        (T (cons (car l) (transform_set (remove_apparences (cdr l) (car l)))))
    )
)

(defun remove_apparences (l e)
    (cond
        ((null l) nil)
        ((= (car l) e) (remove_apparences (cdr l) e))
        (T (cons (car l) (remove_apparences (cdr l) e)))
    )
)

(print (transform_set '(1 2 3 44 2 4  5 2 3 3 3 3 4 4 5 77)))