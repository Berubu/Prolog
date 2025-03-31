solucion(Casas) :-
    Casas = [[1, Color1, Nacionalidad1, Bebida1, Cigarro1, Mascota1],
             [2, Color2, Nacionalidad2, Bebida2, Cigarro2, Mascota2],
             [3, Color3, Nacionalidad3, Bebida3, Cigarro3, Mascota3],
             [4, Color4, Nacionalidad4, Bebida4, Cigarro4, Mascota4],
             [5, Color5, Nacionalidad5, Bebida5, Cigarro5, Mascota5]],
    
    Colores = [Color1, Color2, Color3, Color4, Color5],
    Nacionalidades = [Nacionalidad1, Nacionalidad2, Nacionalidad3, Nacionalidad4, Nacionalidad5],
    Bebidas = [Bebida1, Bebida2, Bebida3, Bebida4, Bebida5],
    Cigarros = [Cigarro1, Cigarro2, Cigarro3, Cigarro4, Cigarro5],
    Mascotas = [Mascota1, Mascota2, Mascota3, Mascota4, Mascota5],
    
    permutation([roja, verde, blanca, amarilla, azul], Colores),
    permutation([britanico, sueco, danes, noruego, aleman], Nacionalidades),
    permutation([te, cafe, leche, cerveza, agua], Bebidas),
    permutation([prince, pall_mall, dunhill, bluemaster, blends], Cigarros),
    permutation([perro, gato, pajaro, caballo, pez], Mascotas),
    
    member([_, roja, britanico, _, _, _], Casas),
    member([_, _, sueco, _, _, perro], Casas),
    member([_, _, danes, te, _, _], Casas),
    Casas = [[1, _, noruego, _, _, _] | _],
    member([_, _, aleman, _, prince, _], Casas),
    al_lado([, verde, _, _, _, _], [, blanca, _, _, _, _], Casas),
    member([_, verde, _, cafe, _, _], Casas),
    member([_, _, _, _, pall_mall, pajaro], Casas),
    member([_, amarilla, _, _, dunhill, _], Casas),
    Casas = [_, _, [3, _, _, leche, _, _], _, _],
    al_lado([, _, _, _, blends, _], [, _, _, _, _, gato], Casas),
    al_lado([, _, _, _, _, caballo], [, _, _, _, dunhill, _], Casas),
    member([_, _, _, cerveza, bluemaster, _], Casas),
    al_lado([, _, _, _, blends, _], [, _, _, agua, _, _], Casas),
    al_lado([, _, noruego, _, _, _], [, azul, _, _, _, _], Casas).

al_lado(A, B, Lista) :- append(_, [A, B | _], Lista).
al_lado(A, B, Lista) :- append(_, [B, A | _], Lista).

pez_dueno(Nacionalidad) :-
    solucion(Casas),
    member([_, _, Nacionalidad, _, _, pez], Casas).