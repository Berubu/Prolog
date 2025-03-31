; 1 : (primer-elemento '(1 2 3 4))

(defun primer-elemento (lista)
  (if (null lista)
      (format t "La lista está vacía.~%")
      (car lista)))

; 2 (segundo_elemento '(1 2 3 4))

(defun segundo-elemento (lista)
  (if (null lista)
      (format t "La lista está vacía.~%")
      (cadr lista)))

;3 (ultimo '(1 2 3 4))

(defun ultimo (lista)
  (if (null lista)
      (format t "La lista está vacía.~%")
      (cdddr lista)))

;4 (longuitud '(1 2 3 4 5 6 7 q r))

(defun longuitud (lista)
  (if (null lista)
      0(+ 1 (longuitud (cdr lista)))
      )
      )

; 5 (suma '(2 1 5 1 5))

(defun suma (lista)
  (if (null lista)
      0 (+ (car lista)(suma (cdr lista)))
      ))
; 6 verifica si un elemento está en la lista
(defun andasono (elemento lista)
  (if (null lista)
      nil
      (if (equal elemento  (car lista))
          t
          (andasono elemento (cdr lista))
          )
      )
  )

; invertr un lista 
(defun invertir (lista)
  (if (null lista)
  nil
      (append (invertir (cdr lista)) (list (car lista))))
  )