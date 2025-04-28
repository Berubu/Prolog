## 2. Encontrar todas las permutaciones de una lista Utiliza *permutacion*` para generar todas las permutaciones posibles de una lista.

permutacion([], []).
permutacion(Lista, [Elemento|PermutacionResto]) :-
    select(Elemento, Lista, Resto),
    permutacion(Resto, PermutacionResto).


##3. Generar subconjuntos de una lista Utiliza subconjunto para encontrar todos los subconjuntos posibles de una lista.

subconjunto([], []).
subconjunto([Elemento|Resto], [Elemento|SubconjuntoResto]) :-
subconjunto(Resto, SubconjuntoResto).
subconjunto([_|Resto], SubconjuntoResto) :-
subconjunto(Resto, SubconjuntoResto).


##4. Encontrar todos los números en un rango que cumplen una condiciónUsa findall para encontrar números que cumplan una propiedad específica, como ser pares o primos.

es_primo(2).
es_primo(N) :-
    N > 2,
    \+ (between(2, N1, N), N1 is N - 1, N mod N1 =:= 0).

% Encontrar todos los números primos en un rango
primos_en_rango(Inicio, Fin, Primos) :-
    findall(N, (between(Inicio, Fin, N), es_primo(N)), Primos).


##5. Concatenar dos listasUsa append para combinar dos listas en una sola.


concatenar(Lista1, Lista2, Resultado) :-
    append(Lista1, Lista2, Resultado).


## 6. Encontrar elementos únicos en una lista

unicos(Lista, Unicos) :-
    findall(X, (member(X, Lista), \+ (select(X, Lista, Resto), member(X, Resto))), Unicos).


## 7. Calcular la potencia de un número
potencias(Numero, Limite, Potencias) :-
    findall(P, (between(0, Limite, E), P is Numero ** E, P =< Limite), Potencias).

## 8. Alinear equipos en un torneo
alineaciones(Equipos, Alineaciones) :-
    findall(A, permutacion(Equipos, A), Alineaciones).

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