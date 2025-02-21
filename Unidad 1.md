## EJERCICIO 1
1.- Que calcule el sueldo que le corresponde al trabajador de una
empresa que cobra 40.000 euros anuales, el programa debe realizar los
cálculos en función de los siguientes criterios:

• Si lleva más de 10 años en la empresa se le aplica un aumento del 10%.
• Si lleva menos de 10 años pero más que 5 se le aplica un aumento del
  7%.
• Si lleva menos de 5 años pero más que 3 se le aplica un aumento del
  5%.
• Si lleva menos de 3 años se le aplica un aumento del 3%.()

(defun calsueldo(anios)
    (let ((sueldo-base 40000 )
        (aumento 0))
    
      (cond
        ((> anios 10) (setf aumento 0.10))
        ((> anios 5) (setf aumento 0.07))
        ((> anios 3) (setf aumento 0.05))
        (t (seft aumento 0.03)))
      (* sueldo-base (+1 aumento))))

2.- Hacer un algortimo que tome el peso en libras de una cantidad de
ropa a lavar en una lavadora y nos devuelva el nivel dependiendo del
peso; además nos informe la cantidad de litros de agua que
necesitamos. Se sabe que con más de 30 libras la lavadora no funcionara
ya que es demasiado peso. Si la ropa pesa 22 ó más libras, el nivel será
de máximo; si pesa 15 ó más nivel será de alto; si pesa 8 ó más será un
nivel medio o de lo contrario el nivel será minimo

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


3.- Martha va a realizar su fiesta de quince años. Por lo cual ha
invitado a una gran cantidad de personas. Pero también ha decidido
algunas reglas: Que todas las personas con edades mayores a los quince
años, sólo pueden entrar si traen regalos; que jóvenes con los quince
años cumplidos entra totalmente gratis pero los de menos de quince años
no pueden entrar a la fiesta. Hacer un algoritmo donde se tome la edad
de una persona y que requisito de los anteriores le toca cumplir si
quiere entrar.

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