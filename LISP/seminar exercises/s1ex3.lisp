(defun removee (l e)
    (cond
        ((null l) nil)
        ((listp (car l)) (cons (removee (car l) e) (removee (cdr l) e)))
        ((equal (car l) e) (removee (cdr l) e))
        (t (cons (car l) (removee (cdr l) e)))
    )
)

(print ( removee '(1 2 (3 8 1) 1 2 7 (3 4 (1 2 1)) 2 7 1 6) 1))