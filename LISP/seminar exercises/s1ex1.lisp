
(defun factorial (n)
  (cond ((zerop n) 1)
        (t (* n (factorial (- n 1))))
  ))