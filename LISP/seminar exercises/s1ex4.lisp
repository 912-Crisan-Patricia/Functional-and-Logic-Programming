(defun minimum (l)
    (cond
        ((null l) 10000)
        ((numberp (car l)) (min (car l) (minimum (cdr l))))
        ((atom (car l)) (minimum (cdr l)))
    )
)

(defun positions (l e p)
    (cond
        ((null l) nil)
        ((equal e (car l)) (cons p (positions (cdr l) e (+ p 1))))
        (t (positions (cdr l) e (+ p 1)))
    )

)

(defun pozmain (l)
    (positions l (minimum l) 1)
)

(print (pozmain '(2 1 3 0 -1 6 7 -1 9 10 -1 )))