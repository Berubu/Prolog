# 1 Problemas con car y cdr

Lista: (a b c d e) → Extraer d  = (cadddr ' (a b c d e))

  Lista: ((1 2) (3 4) (5 6)) → Extraer 5  = (caaddr '((1 2) (3 4) (5 6)))

  Lista: ((a b) (c d) (e f)) → Extraer e = (caaddr '((a b) (c d) (e f)))

  Lista: ((x y) ((p q) (r s)) (z w)) → Extraer z = (caaddr '((x y) ((p q) (r s)) (z w)))

  Lista: ((1 (2 3)) (4 (5 6))) → Extraer 6 = (car (cdr (car (cdr (car (cdr '((1 (2 3)) (4 (5 6)))))))))

  Lista: (((a b) c) d e) → Extraer c = (cadr '(((a b) c) d e))

  Lista: (((1 2) 3) ((4 5) 6)) → Extraer 6 = (cadr(cadr '(((1 2) 3) ((4 5) 6))))

  Lista: ((p (q (r s))) t u) → Extraer (r s) =  (car (cdr (car (cdr (car '((p (q (r s))) t u))))))

  Lista: (((a) b) (c (d e)) f) → Extraer d = (car(cdr(cadadr '(((a) b) (c (d e)) f))))

  Lista: ((1 (2 (3 4))) (5 6)) → Extraer 3

  Lista: (((x) (y)) ((z) (w))) → Extraer (w)

  Lista: ((a (b (c d))) (e f)) → Extraer c

  Lista: ((1 (2 (3 (4 5)))) (6 7)) → Extraer 4

  Lista: (((a b) c) ((d e) f) ((g h) i)) → Extraer g

  Lista: (((x y) (z w)) ((p q) (r s))) → Extraer r

  Lista: ((1 (2 (3 (4 (5 6))))) (7 8)) → Extraer 5

  Lista: ((a (b (c (d e)))) (f g)) → Extraer d

  Lista: (((1 2) (3 4)) ((5 6) (7 8))) → Extraer 7

  Lista: ((x (y (z (w v))))) → Extraer w

  Lista: (((a b c) (d e f)) ((g h i) (j k l))) → Extraer j



dada cualquier lista