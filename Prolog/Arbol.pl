%————— Hechos de género —————%
hombre(indalecio).
hombre(david).
hombre(gabino).
hombre(raul).
hombre(jorge).
hombre(erick).
hombre(izack).
hombre(julio).
hombre(toño).

mujer(maria).
mujer(cassandra).
mujer(rubi).
mujer(esmeralda).
mujer(maury).
mujer(diana).
mujer(mia).
mujer(valeri).
mujer(hellen).
mujer(yesenia).
mujer(jasmin).
mujer(nahomi).
mujer(rosa).
mujer(yamilet).

%————— Hechos de paternidad y maternidad —————%
padre(indalecio, david).
padre(indalecio, rubi).
padre(gabino, esmeralda).
padre(gabino, maury).
padre(raul, jorge).
padre(raul, mia).
padre(erick, izack).
padre(erick, jasmin).
padre(julio, yesenia).
padre(julio, nahomi).
padre(toño, yamilet).

madre(maria, david).
madre(maria, rubi).
madre(cassandra, esmeralda).
madre(cassandra, maury).
madre(diana, jorge).
madre(diana, mia).
madre(valeri, izack).
madre(valeri, jasmin).
madre(hellen, yesenia).
madre(hellen, nahomi).
madre(rosa, yamilet).

%————— Hechos de pareja (opcional) —————%
padrede(indalecio, maria).
padrede(gabino, cassandra).
padrede(raul, diana).
padrede(erick, valeri).
padrede(julio, hellen).
padrede(toño, rosa).

madrede(maria, indalecio).
madrede(cassandra, gabino).
madrede(diana, raul).
madrede(valeri, erick).
madrede(hellen, julio).
madrede(rosa, toño).

%————— Reglas de parentesco —————%

% Abuelo y abuela
abuelode(X, Y)  :- padre(X, Z), padre(Z, Y).
abuelade(X, Y)  :- madre(X, Z), madre(Z, Y).

% Nieto y nieta
nietode(X, Y)   :- abuelode(Y, X).
nietade(X, Y)   :- abuelade(Y, X).

% Hermanos y hermanas (mismo padre o misma madre, distintos individuos)
hermanode(X, Y) :- padre(Z, X), padre(Z, Y), X \= Y.
hermane(X, Y)   :- madre(Z, X), madre(Z, Y), X \= Y.

% Tío y tía (hermano/a de uno de los padres)
tiode(X, Y)     :- hermanode(X, Z), padre(Z, Y).
tiade(X, Y)     :- hermane(X, Z), madre(Z, Y).

% Primo y prima (hijos de hermanos)
primode(X, Y)   :- padre(Z, X), padre(W, Y), hermanode(Z, W).
primade(X, Y)   :- padre(Z, X), padre(W, Y), hermane(Z, W).

% Sobrino y sobrina (hijos de un hermano/a)
sobrinode(X, Y) :- tiode(Y, X).
sobrinade(X, Y) :- tiade(Y, X).

?- abuelode(indalecio, alguien).
?- hermanode(david, rubi).
?- tiade(cassandra, X).
