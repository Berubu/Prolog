(defun area-cuadrado (lado)
  (* lado lado))

(defun area-rectangulo (base altura)
  (* base altura))

(defun area-circulo (radio)
  (* 3.1416 radio radio))

(defun area-triangulo (base altura)
  (/ (* base altura) 2))

(defun area-trapecio (base1 base2 altura)
  (/ (* (+ base1 base2) altura) 2))

(defun volumen-cubo (lado)
  (* lado lado lado))

(defun volumen-esfera (radio)
  (* (/ 4 3) 3.1416 radio radio radio))

(defun volumen-cilindro (radio altura)
  (* 3.1416 radio radio altura))

(defun volumen-cono (radio altura)
  (/ (* 3.1416 radio radio altura) 3))

(defun volumen-prisma (base altura prisa)
  (* base altura prisma))
