## 2. Encontrar todas las permutaciones de una lista Utiliza *permutacion*` para generar todas las permutaciones posibles de una lista.

permutacion([], []).
permutacion(Lista, [Elemento|PermutacionResto]) :-
    select(Elemento, Lista, Resto),
    permutacion(Resto, PermutacionResto).

% Ejemplo de uso:
% ?- permutacion([a, b, c], P).
% P = [a, b, c] ;
% P = [a, c, b] ;
% P = [b, a, c] ;
% P = [b, c, a] ;
% P = [c, a, b] ;
% P = [c, b, a].

##3. Generar subconjuntos de una lista Utiliza subconjunto para encontrar todos los subconjuntos posibles de una lista.

subconjunto([], []).
subconjunto([Elemento|Resto], [Elemento|SubconjuntoResto]) :-
subconjunto(Resto, SubconjuntoResto).
subconjunto([_|Resto], SubconjuntoResto) :-
subconjunto(Resto, SubconjuntoResto).

% Ejemplo de uso:
% ?- subconjunto([1, 2, 3], S).
% S = [] ;
% S = [1] ;
% S = [2] ;
% S = [3] ;
% S = [1, 2] ;
% S = [1, 3] ;
% S = [2, 3] ;
% S = [1, 2, 3].

4. Encontrar todos los números en un rango que cumplen una condición
Usa findall para encontrar números que cumplan una propiedad específica, como ser pares o primos.

Problema: Encuentra todos los números primos entre 1 y 20.

Predicados: findall, es\primo.

5. Concatenar dos listas
Usa append para combinar dos listas en una sola.

Problema: Combina `[1, 2]` y `[3, 4]` en `[1, 2, 3, 4]`.

Predicado: append.

6. Encontrar elementos únicos en una lista
Usa findall y member para eliminar duplicados.

Problema: Dada la lista [1, 2, 2, 3, 3, 3, 4], genera [1, 2, 3, 4].

Predicados: findall, member.

7. Calcular la potencia de un número
Usa un predicado recursivo y `findall/3` para calcular todas las potencias de un número hasta un límite.

Problema: Dado el número 2, calcula sus potencias hasta 25
:

[1, 2, 4, 8, 16, 32]
Predicado: findall.

8. Alinear equipos en un torneo
Usa *permutacion*` para generar todas las alineaciones posibles de equipos en un torneo.

Problema: Dado un conjunto de equipos [A, B, C], genera todas las combinaciones posibles de enfrentamientos.

Predicado: permutacion

9. Resolver problemas de caminos
Encuentra todas las rutas posibles entre dos nodos en un grafo utilizando `findall/3`.

Problema: Dado un grafo representado como:

arco(a, b).
arco(b, c).
arco(c, d).
arco(a, d).
Encuentra todas las rutas de a a d.

Predicados: findall, predicado recursivo para buscar caminos.

10. Generar combinaciones con repetición
Usa findall para generar combinaciones posibles de elementos de una lista con repetición.

Problema: Dada la lista [a, b] y un tamaño 2, genera:

[a, a]
[a, b]
[b, a]
[b, b]
Predicado: findall.