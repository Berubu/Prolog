# Funciones primitivas en lisp 
# Funciones aritméticas 
Estas funciones permiten realizar operaciones matemáticas básicas
Como suma, resta, multiplicación y división.

(+ 3 5 2);; devuelve 10
(- 10 4);; devuelve 6
(* 2 3 4) ;; Devuelve 24
(/ 10 2) ;; Devuelve 5
(mod 10 3) ;; Devuelve 1

# Funciones de Comparación
Se utilizan para comprar valores numéricos o símbolos. Devuelven T (true) o NIL (false).

(= 5 5) ;; Devuelve T, verifica si dos números son iguales.
(/= 5 3) ;; Devuelve T, verifica si dos números son distintos.
(< 3 5) ;; Devuelve T, verifica si un número es menor que otro.
(> 8 2) ;; Devuelve T, Verifica si un número es mayor que otro.
(<= 3 3) ;; Devuelve T, Verifica si un número es menor o igual a otro.
(>= 10 9) ;; Devuelve T, Verifica si un número es mayor o igual a otro.

# Funciones de Manipulación de Listas
Lisp es un lenguaje basado en listas, por lo que cuenta con muchas funciones primitivas para manipularlas.

(car '(1 2 3)) ;; Devuelve 1, Retorna el primer elemento de una lista.
(cdr '(1 2 3)) ;; Devuelve (2 3), Retorna la lista sin el primer elemento.
(car '((2 5)(4 3) 3 2))
 (cdr '((2 5)(4 3) 3 2 3))

(cdddr '(12345));; el nivel de cdr es hasta 4 por lo tanto imprime (5)
(cons 5 '(2 3)) ;; Devuelve (5 2 3), Agrega un elemento al inicio de una lista.
(append '(1 2) '(3 4)) ;; Devuelve (1 2 3 4), Une dos listas.
(list 7 8 9) ;; Devuelve (7 8 9), Crea una nueva lista con los elementos dados.

canbinaciones para cada una 2 3 5 

# Funciones Lógicas
Permiten evaluar condiciones lógicas dentro del código Lisp.

(and T T NIL) ;; Devuelve NIL, Devuelve T si todas las condiciones son verdaderas.
(or NIL NIL T) ;; Devuelve T, Devuelve T si al menos una condición es verdadera.
(not T) ;; Devuelve NIL, Invierte un valor booleano.
(null '()) ;; Devuelve T, Verifica si una lista está vacía.
(equal '(1 2) '(1 2)) ;; Devuelve T, Compara dos valores (números, listas, símbolos).

# Funciones de Control de Flujo
Lisp permite tomar decisiones y ejecutar código condicionalmente.

(if (> 5 3) "Mayor" "Menor") ;; Devuelve "Mayor", Evalúa una condición y ejecuta código según el resultado.
(cond ((> 5 10) "Grande") ((< 5 2) "Pequeño") (T "Normal")) ;; Devuelve "Normal", Evalúa múltiples condiciones hasta encontrar la primera verdadera.
(when (> 10 5) (print "Es mayor")), Ejecuta un bloque de código si la condición es verdadera.
(unless (= 2 3) (print "No son iguales")), Ejecuta un bloque de código si la condición es falsa.
Funciones de Entrada y Salida
Permiten interactuar con el usuario mediante la consola.
(print "Hola, Lisp!"), Muestra un valor en pantalla.
(format T "El resultado es: ~A" 42), Imprime texto con formato.
(setq x (read)), Captura un valor ingresado por el usuario.


