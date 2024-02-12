(defun suma (l e)
    (cond 
        ((null l) e)
        (t (suma (cdr l) (+ e (car l))))
    )
)

(defun suma1 (l)
    (cond
        ((null l) 0)
        (t (+ (car l) (suma1 (cdr l))))
    )
)

(print (suma '(1 2 3 4 5 6 7 8 9) 0))

(print (suma1 '(1 2 3 4 5 6 7 8 9)))