## Programacion Funcional 
Es un estilo donde todo es función y no cambia. O sea, las variables son inmutables una vez les das un valor, ya no lo cambias y no guardan estado secreto que vaya mutando a lo largo del programa. En vez de ir paso a paso con for o while, compones funciones unas con otras y recurres si necesitas repetir algo.

## ¿De dónde sale todo esto?
Le debemos mucho a Alonzo Church y su Cálculo Lambda, un sistema matemático para describir funciones y cómo aplicarlas. Ahí aprendieron a:

Escribir recursión pura nada de bucles tradicionales.

Tener combinadores como el famoso  y Combinator que permite recursión sin llamarse a sí mismo por nombre.
Y sobre ese cimiento se construyeron lenguajes como Lisp, Haskell, OCaml, Clojure, etc. Algunos son tipados dinámicos (Lisp), otros estáticos fuertes (Haskell), pero todos comparten la idea de inmutabilidad y funciones de alto orden.

## ¿Cómo es en la práctica?
“Debo poner atención en clase” 500 veces. En PHP imperativo sería un for:

php
Copiar código
for ($i = 0; $i < 500; $i++) {
    echo "Debo poner atención en clase";
}

lisp
Copiar código
(loop repeat 500 do (format t "Debo poner atención en clase~%"))
Ningún bucle for; todo es composición: “repite esto”, “toma 500” y “ejecuta putStrLn en cada uno”.

Transformaciones Lambda: α, β y η
En el mundo de Church hay tres trucos clave:
α‑conversión: renombrar variables para evitar confusiones.
β‑reducción: aplicar la función sustituyendo parámetros por valores.
η‑conversión: simplificar funciones equivalentes. Por ejemplo:

haskell
Copiar código
absN n = abs n       -- versión “verborreica”
absN'   = abs        -- versión reducida (η‑conversión)
Funciones puras y monadas
Lo chido de las funciones puras es que siempre que les das un input, devuelven el mismo output sin efectos colaterales. Pero a veces sí necesitas, por ejemplo, leer de disco o imprimir en pantalla. Ahí entran las mónadas (en Haskell, la clásica IO), que te permiten encadenar acciones “impuras” manteniendo el estilo funcional.

¿Y en lenguajes normales?
Hoy casi todos los lenguajes OOP traen cositas funcionales:

Java ya tiene lambdas y streams.

Python lleva rato teniendo map, filter y comprensión de listas.

Incluso en JavaScript usamos .reduce(), .filter() y demás.

Así, aunque no seas 100% “funcional”, puedes aprovechar inmutabilidad, funciones de alto orden y expresiones concisas para escribir código más limpio y menos propenso a errores.

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





## UNIDAD 2

Prolog 

Arbol familiar 
correccion de reglas de inferencia 

# Ejecicio 
En una calle hay cinco casas, cada una de un color distinto.  En cada
casa vive una persona de distinta nacionalidad.  Cada dueño bebe un
único tipo de bebida, fuma una sola marca de cigarrillos y tiene una
mascota diferente a sus vecinos.  A partir de las 15 pistas
presentadas a continuación, la consigna que hay que responder es:
"¿Quién es el dueño del pez?".
 
El británico vive en la casa roja.
El sueco tiene un perro como mascota.
El danés toma té.
El noruego vive en la primera casa.
El alemán fuma Prince.
La casa verde está inmediatamente a la izquierda de la blanca.
El dueño de la casa verde bebe café.
El propietario que fuma Pall Mall cría pájaros.
El dueño de la casa amarilla fuma Dunhill.
El hombre que vive en la casa del centro bebe leche.
El vecino que fuma Blends vive al lado del que tiene un gato.
El hombre que tiene un caballo vive al lado del que fuma Dunhill.
El propietario que fuma Bluemaster toma cerveza.
El vecino que fuma Blends viveal lado del que toma agua.
El noruego vive al lado de la casa azul.

# Ejecicio
Acertijo de los Científicos y sus Laboratorios Cinco científicos
trabajan en un centro de investigación. Cada uno tiene un laboratorio en
un color diferente y se especializa en una rama distinta de la
ciencia. Además, cada científico usa un tipo diferente de equipo y
prefiere una bebida específica mientras trabaja.

Pistas El científico en el laboratorio rojo investiga en Biología.  El
físico trabaja en el laboratorio azul.  El químico usa un microscopio.
La persona en el laboratorio verde toma té.  El laboratorio verde está a
la derecha del laboratorio blanco.  El científico que usa un
espectrofotómetro investiga en Química.  El investigador del laboratorio
amarillo usa una centrífuga.  El científico en el laboratorio del centro
toma café.  El investigador del laboratorio naranja trabaja en
Matemáticas.  El científico en el primer laboratorio usa un microscopio.
El científico que usa una pipeta trabaja junto al que investiga en
Física.  El científico que usa una balanza trabaja junto al que usa un
espectrofotómetro.  El investigador que trabaja en Ciencias de la
Computación usa una laptop.  Uno de los científicos usa un osciloscopio.
El científico en el laboratorio negro bebe agua.  Preguntas a responder
con Prolog ¿En qué laboratorio trabaja el científico de Química?  ¿Quién
usa la pipeta?  ¿Cuál es la bebida preferida del científico que
investiga en Matemáticas?
