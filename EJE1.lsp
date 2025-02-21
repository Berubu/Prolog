(defun calsueldo(anios)
    (let ((sueldo-base 40000 )
        (aumento 0))
    
      (cond
        ((> anios 10) (setf aumento 0.10))
        ((> anios 5) (setf aumento 0.07))
        ((> anios 3) (setf aumento 0.05))
        (t (seft aumento 0.03)))
      (* sueldo-base (+1 aumento))))


(defun nivel-agua (peso)
  (if (> peso 30)
      (format t "Demasiado peso La lavadora no funcionará.~%")
      (if (>= peso 22)
          (format t "Nivel: Máximo Litros de agua: 50~%")
          (if (>= peso 15)
              (format t "Nivel: Alto Litros de agua: 40~%")
              (if (>= peso 8)
                  (format t "Nivel: Medio Litros de agua: 30~%")
                  (format t "Nivel: Mínimo Litros de agua: 20~%"))))))

(defun main ()
  (format t "Ingrese el peso de la ropa en libras: ")
  (let ((peso (parse-integer (read-line))))
    (nivel-agua peso)))

(main)


(defun entrada-fiesta (edad)
  (if (> edad 15)
      (format t "Puedes entrar solo si traes un regalo.~%")
      (if (= edad 15)
          (format t "Puedes entrar totalmente gratis.~%")
          (format t "No puedes entrar a la fiesta.~%"))))

(defun main ()
  (format t "Ingrese su edad: ")
  (let ((edad (parse-integer (read-line))))
    (entrada-fiesta edad)))

(main)