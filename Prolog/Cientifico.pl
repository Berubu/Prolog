Acertijo de los Científicos y sus Laboratorios Cinco científicos
trabajan en un centro de investigación. Cada uno tiene un laboratorio en
un color diferente y se especializa en una rama distinta de la
ciencia. Además, cada científico usa un tipo diferente de equipo y
prefiere una bebida específica mientras trabaja.

Pistas El científico en el laboratorio rojo investiga en Biología.  El
físico trabaja en el laboratorio azul.  El químico usa un microscopio.
La persona en el laboratorio verde toma té.  El laboratorio verde está a
la derecha del laboratorio blanco.  El científico que usa un
espectrofotómetro investiga en Química.  El investigador del laboratorio
amarillo usa una centrífuga.  El científico en el laboratorio del centro
toma café.  El investigador del laboratorio naranja trabaja en
Matemáticas.  El científico en el primer laboratorio usa un microscopio.
El científico que usa una pipeta trabaja junto al que investiga en
Física.  El científico que usa una balanza trabaja junto al que usa un
espectrofotómetro.  El investigador que trabaja en Ciencias de la
Computación usa una laptop.  Uno de los científicos usa un osciloscopio.
El científico en el laboratorio negro bebe agua.  Preguntas a responder
con Prolog ¿En qué laboratorio trabaja el científico de Química?  ¿Quién
usa la pipeta?  ¿Cuál es la bebida preferida del científico que
investiga en Matemáticas?


cientificos
laboratorios 
colores
especiales   
herramientas 
bebidas 

cientifico(Laboratorios) :-
    Laboratorios = [
        laboratorio(rojo, biologia, _, _),
        laboratorio(azul, fisica, _, _),
        laboratorio(_, quimica, microscopio, _),
        laboratorio(verde, _, _, te),
        laboratorio(_, _, _, _)
    ],
    next_to(laboratorio(blanco, _, _, _, _), laboratorio(verde, _, _, _, _), Laboratorios),
    member(laboratorio(_, quimica, espectrofotometro, _, _), Laboratorios),
    member(laboratorio(amarillo, _, centrifuga, _, _), Laboratorios),
    nth1(3, Laboratorios, laboratorio(_, _, _, _, cafe)),
    member(laboratorio(naranja, matematicas, _, _, _), Laboratorios),
    nth1(1, Laboratorios, laboratorio(_, _, microscopio, _, _)),
    next_to(laboratorio(_, _, _, pipeta, _), laboratorio(_, fisica, _, _, _), Laboratorios),
    next_to(laboratorio(_, _, _, balanza, _), laboratorio(_, _, _, espectrofotometro, _), Laboratorios),
    member(laboratorio(_, ciencias_computacion, laptop, _, _), Laboratorios),
    member(laboratorio(_, _, _, osciloscopio, _), Laboratorios),
    member(laboratorio(negro, _, _, _, agua), Laboratorios).

% Regla para verificar si dos laboratorios están uno al lado del otro
next_to(A, B, List) :- append(_, [A,B|_], List).
next_to(A, B, List) :- append(_, [B,A|_], List).

% Regla para resolver el acertijo
resolver(Laboratorios) :-
    cientifico(Laboratorios).

% Consultas para responder las preguntas
quimico(Laboratorio) :- resolver(Laboratorios), member(laboratorio(Laboratorio, quimica, _, _, _), Laboratorios).
pipeta(Cientifico) :- resolver(Laboratorios), member(laboratorio(Cientifico, _, _, pipeta, _), Laboratorios).
bebida_matematicas(Bebida) :- resolver(Laboratorios), member(laboratorio(_, matematicas, _, _, Bebida), Laboratorios).