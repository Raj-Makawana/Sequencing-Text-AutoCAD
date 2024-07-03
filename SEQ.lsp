(defun C:SEQ (/ base numb pt)
  (setq base (getstring "\nPrefix: ")
        numb (getint "\nBeginning Number: ")
        ht (getdist "\nText height: "))

  (while (setq pt (getpoint "\nInsertion point: "))
    (entmake
      (list
        '(0 . "TEXT")
        (cons 1 (strcat base (itoa numb)))
        (cons 7 (getvar "textstyle"))
        (cons 10 pt)
        (cons 40 ht)
        '(50 . 0)
      ) ;; list
    ) ;; entmake
    (setq numb (1+ numb))
  ) ;; while
  (princ)
)
