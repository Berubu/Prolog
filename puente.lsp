;4 personas deben cruzar un puente de noche, solo tienen una linterna, 
;el puente es demasiado pequeño, el puente solo soportar 2 personas a la vez, cuando 
;Cada persona tiene una velocidad de cruce diferente 
;Persona  A puede cruzar en un 1 min, b en 2, c en 5 y d en 10 
;No pueden cruzar sin la linterna, solo 2 a la vez 
;El tiempo total es entre la persona más lenta que cruza 
;Deben encontrar la forma más rápida de cruzar 
;Todos deben cruzar el puente en menos de 17 min

;Cuál es la estrategia óptima para en menos limpio posible 
;Cuantos viajes se necesitan?
;Se puede encontrar un progre en Lisp 

;abcd ------ab 2------>ab
;cd <------a 1--------b
;a -------cd 10------->cd b
;a <------b 2--------- cd
;ab  ------ab 2-------->cd ab


(defun cruzar-puente ()
  (let ((tiempo-total 0))
    ;; Viaje 1: A y B cruzan
    (incf tiempo-total 2)
    (format t "A y B cruzan (2 min) - Tiempo total: ~a~%" tiempo-total)

    ;; Viaje 2: A regresa
    (incf tiempo-total 1)
    (format t "A regresa (1 min) - Tiempo total: ~a~%" tiempo-total)

    ;; Viaje 3: C y D cruzan
    (incf tiempo-total 10)
    (format t "C y D cruzan (10 min) - Tiempo total: ~a~%" tiempo-total)

    ;; Viaje 4: B regresa
    (incf tiempo-total 2)
    (format t "B regresa (2 min) - Tiempo total: ~a~%" tiempo-total)

    ;; Viaje 5: A y B cruzan nuevamente
    (incf tiempo-total 2)
    (format t "A y B cruzan nuevamente (2 min) - Tiempo total: ~a~%" tiempo-total)

    ;; Resultado final
    (format t "¡Todos cruzaron en ~a minutos!~%" tiempo-total)))

;; Ejecutar la simulación
(cruzar-puente)