(defparameter *arbol-akinator*
  '("¿Es un personaje de Rick y Morty?"
    ;; rama "sí":
    ("¿Es un adulto?"
     ;; si “sí”:
     ("¿Es científico?"
      "Rick Sánchez"
      "Unity (IA de Rick)")
     ;; si “no”:
     ("¿Es miembro de la familia Smith?"
      ;; si “sí”:
      ("¿Es mujer?"
       "Beth Smith"
       "Summer Smith")
      ;; si “no”:
      ("¿Es un villano?"
       "Evil Morty"
       "Mr. Meeseeks")))

    ;; rama "no":
    ("¿Es un ser no humano?"
     ;; si “sí”:
     ("¿Es un alienígena?"
      "Birdperson"
      "Squanchy")
     ;; si “no”:
     ("¿Es un robot?"
      "Cromulón"
      "Abradolf Lincler"))))
(defun preguntar (texto)
  "Imprime TEXTO y devuelve T si el usuario responde 'si', NIL si 'no'."
  (format t "~a (si/no): " texto)
  (let ((resp (string-downcase (read-line))))
    (string= resp "si")))

(defun recorrer-arbol (nodo)
  "Si NODO es cadena, lo adivina; si es lista, pregunta y sigue recursivamente."
  (if (stringp nodo)
      (format t "¡Lo tengo! Tu personaje es: ~a.~%" nodo)
    (destructuring-bind (pregunta si no) nodo
      (if (preguntar pregunta)
          (recorrer-arbol si)
        (recorrer-arbol no)))))
(defun iniciar-akinator ()
  "Arranca el Akinator sobre *arbol-akinator*."
  (recorrer-arbol *arbol-akinator*))

;;; Para jugar, evalúa:
;;; (iniciar-akinator)
