(defun mmerge(l1 l2)
    (cond
        ((null l2) l1)
        ((null l1) l2)
        ((<(car l1)(car l2))(cons (car l1) (mmerge(cdr l1) l2)))
        ((>(car l1)(car l2))(cons (car l2) (mmerge l1 (cdr l2))))
        (t (cons (car l1) (mmerge(cdr l1) (cdr l2))))
    )
)

(print(mmerge '(1 2 4 6) '(2 3 4 7 8)))