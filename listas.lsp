(defun recor (lsta)
  (if (null lsta)
      nil
      (cons (car lsta) (recor (cdr lsta)))))



(defun recorre (lista)
  (format t "->~d" (car lista))
  (if lista
      (recorre (cdr lista))
      )
)


dada una liasta solo imprimir los numeros que son pares de esa lista 

(defun recorre (lista)
  (if (null lista)
      nil
      (progn
        (if (evenp (car lista))
            (format t "->~d~%" (car lista))
        )
        (recorre (cdr lista))
        )
    )
)

;;(recorre '(1 2 3 4 5 6))
;; (load "C:/cygwin64/Actividades/listas.lsp")
