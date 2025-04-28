# Variables Anonimas Prolog
Las variables anónimas en Prolog se representan con el guion bajo (_). Se utilizan cuando no se necesita almacenar un valor específico y solo se desea que el predicado se ejecute sin importar el valor de esa variable. No almacenan valores y se tratan como una nueva variable en cada aparición. Son útiles para ignorar argumentos en un predicado o simplificar consultas, como verificar la existencia de una relación sin interesarse por los valores.

Ejemplo:
Para verificar si Juan tiene algún hijo, usamos `padre(juan, _)`, que devuelve `true` si Juan tiene al menos un hijo, sin importar quién sea.

Los predicados mitológicos en programación lógica, como `maplist`, `permutacion`, `append`, `subconjunto`, `reverse`, y `flatten`, son herramientas poderosas en Prolog. Ayudan a resolver problemas comunes de forma elegante y flexible, como transformar listas, generar permutaciones, concatenar listas, generar subconjuntos, invertir listas y aplanar listas anidadas.

Ejemplo:
- maplist aplica un predicado a cada elemento de una lista.
- permutacion genera todas las permutaciones posibles de una lista.
- append concatena o divide listas.
- subconjunto genera todos los subconjuntos posibles de una lista.