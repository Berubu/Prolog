##Problema 1: Los guardianes de los templos
##Cuatro guardianes (Apolo, Hécate, Ares y Hermes) custodian templos mitológicos asociados con diferentes elementos (fuego, agua, tierra y aire). Sabemos que:
##Apolo no cuida el templo de fuego ni el de tierra.
##Hécate no cuida el templo de aire.
##Ares no cuida el templo de agua ni de aire.
##Hermes cuida el templo de fuego o de agua.

##Pregunta: ¿Qué templo cuida cada guardián?
##el o se pone ; 

guardianes([apolo, hecate, ares, hermes]).
templos([fuego, agua, tierra, aire]).

asignar_templos(asignacion) :- asignacion = [apolo-TA, hecate-TH, ares-TAr, hermes-THm], templos(T), permutation(T, [TA, TH, TAr, THm]),
    TA \= fuego, TA \= tierra,  % apolo no cuida fuego ni tierr
    TH \= aire,                 % Hécate no cuida aire
    TAr \= agua, TAr \= aire,   % Ares no cuida agua ni aire
    (THm = fuego ; THm = agua). % Hermes cuida fuego o agua

?- asignar_templos(Asignacion).

# 2

heroes([aquiles, perseo, hercules, teseo]).
armas([espada, lanza, arco, escudo]).

% Regla para asignar armas
asignar_armas(asignacion) :- asignacion = [aquiles-AA, perseo-AP, hercules-AH, teseo-AT], armas(A),
    permutation(A, [AA, AP, AH, AT]), AA \= escudo, AA \= arco,  AP \= espada, AH \= lanza, AH \= escudo, (AT = arco ; AT = escudo).  

?- asignar_armas(Asignacion).



