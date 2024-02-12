(defun addN (l e p N)
    (cond 
        ((null l) nil)
        ((equal 0 (mod p n)) (cons e (addN l e (+ p 1) N)))
        (t (cons (car l) (addN (cdr l) e (+ p 1) N)))
    )
)

;(print (addN '(1 2 3 4 5 6 7 8 9) 0 1 3))

(defun addmain (l e N)
    (addN l e 1 N)
)

(print (addmain '(1 2 3 4 5 6 7 8 9) 0 5))