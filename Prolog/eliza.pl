% ----------------- Directivas para evitar warnings de SWI-Prolog ----------
:- discontiguous procesar_entrada/2.
:- discontiguous hermano/2.
:- discontiguous hermana/2.
:- discontiguous especialista/2.
:- discontiguous tratamiento/2.
:- discontiguous recomendaciones/2.
:- discontiguous causas/2.

% -------------------- HECHOS BÁSICOS: FAMILIA ----------------------
padre(david, rodrigo).
padre(gabino, maria_isabel).
padre(gabino, salud).
padre(gabino, ramona).
padre(gabino, rosa).
padre(gabino, mari).
padre(gabino, alejandra).
padre(gabino, cristina).
padre(gabino, agustin).
padre(gabino, nicolas).
padre(gabino, pedro).
padre(gabino, gabino_j).

padre(rodrigo, isabel).
padre(rodrigo, cassandra).
padre(rodrigo, maury).
padre(rodrigo, david_segundo).

padre(antonio, jenny).
padre(antonio, antonio_j).
padre(roman, ramon).
padre(roman, roman_j).
padre(roman, andrea).
padre(roberto, diana).
padre(roberto, cesar).
padre(roberto, roberto_j).
padre(roberto, brayan).
padre(nect, wendy).
padre(nect, fernanda).
padre(nect, nectalyn).
padre(chavo, pablo).
padre(chavo, juan).
padre(agustin, francisco).
padre(agustin, jorge).
padre(nicolas, jessenia).
padre(nicolas, nancy).
padre(nicolas, lizet).
padre(nicolas, jose).
padre(nicolas, diego).
padre(nicolas, nenon).

padre(miguel, esmeralda).
padre(miguel, rubi).
padre(julio, valeria).
padre(julio, yamilet).
padre(julio, hellen).
padre(david_segundo, davicito).
padre(david_segundo, izack).
padre(david_segundo, mia).

madre(maurilia, rodrigo).
madre(maria_gregoria, maria_isabel).
madre(maria_gregoria, salud).
madre(maria_gregoria, ramona).
madre(maria_gregoria, rosa).
madre(maria_gregoria, mari).
madre(maria_gregoria, alejandra).
madre(maria_gregoria, cristina).
madre(maria_gregoria, agustin).
madre(maria_gregoria, nicolas).
madre(maria_gregoria, pedro).
madre(maria_gregoria, gabino_j).

madre(maria_isabel, isabel).
madre(maria_isabel, cassandra).
madre(maria_isabel, maury).
madre(maria_isabel, david_segundo).

madre(salud, jenny).
madre(salud, antonio_j).
madre(ramona, ramon).
madre(ramona, roman_j).
madre(ramona, andrea).
madre(rosa, diana).
madre(rosa, cesar).
madre(rosa, roberto_j).
madre(rosa, brayan).
madre(mari, wendy).
madre(mari, fernanda).
madre(mari, nectalyn).
madre(cristina, pablo).
madre(cristina, juan).
madre(rosario, francisco).
madre(rosario, jorge).
madre(mercedes, jessenia).
madre(mercedes, nancy).
madre(mercedes, lizet).
madre(mercedes, jose).
madre(mercedes, diego).
madre(mercedes, nenon).

madre(cassandra, esmeralda).
madre(cassandra, rubi).
madre(maury, valeria).
madre(maury, yamilet).
madre(maury, hellen).
madre(diana_s, davicito).
madre(diana_s, izack).
madre(diana_s, mia).

casados(david, maurilia).
casados(gabino, maria_gregoria).
casados(rodrigo, maria_isabel).
casados(antonio, salud).
casados(roman, ramona).
casados(roberto, rosa).
casados(nect, mari).
casados(chavo, cristina).
casados(agustin, rosario).
casados(nicolas, mercedes).
casados(miguel, cassandra).
casados(julio, maury).
casados(david_segundo, diana_s).

en_relacion(isabel, raul).

hombre(david). hombre(gabino). hombre(rodrigo). hombre(antonio). hombre(roman).
hombre(roberto). hombre(nect). hombre(chavo). hombre(agustin). hombre(nicolas).
hombre(pedro). hombre(gabino_j). hombre(david_segundo). hombre(antonio_j). hombre(ramon).
hombre(roman_j). hombre(cesar). hombre(roberto_j). hombre(brayan). hombre(nectalyn).
hombre(pablo). hombre(juan). hombre(francisco). hombre(jorge). hombre(jose).
hombre(diego). hombre(nenon). hombre(miguel). hombre(julio). hombre(davicito).
hombre(izack). hombre(raul).

mujer(maurilia). mujer(maria_gregoria). mujer(maria_isabel). mujer(salud). mujer(ramona).
mujer(rosa). mujer(mari). mujer(alejandra). mujer(cristina). mujer(rosario).
mujer(mercedes). mujer(isabel). mujer(cassandra). mujer(maury). mujer(jenny).
mujer(andrea). mujer(diana). mujer(wendy). mujer(fernanda). mujer(jessenia).
mujer(nancy). mujer(lizet). mujer(esmeralda). mujer(rubi). mujer(valeria).
mujer(yamilet). mujer(hellen). mujer(diana_s). mujer(mia).

% ------------ HERMANOS ESPECIALES (PERSONALIZADO) ----------------
hermanos_de(isabel, [maury, david_segundo, cassandra]).
hermanos_de(maury, [isabel, david_segundo, cassandra]).
hermanos_de(david_segundo, [isabel, maury, cassandra]).
hermanos_de(cassandra, [isabel, maury, david_segundo]).

hermano(X, Y) :- hermanos_de(Y, Lista), member(X, Lista), hombre(X).
hermana(X, Y) :- hermanos_de(Y, Lista), member(X, Lista), mujer(X).
hermano(X, Y) :- progenitor(P, X), progenitor(P, Y), X \= Y, hombre(X).
hermana(X, Y) :- progenitor(P, X), progenitor(P, Y), X \= Y, mujer(X).

progenitor(X, Y) :- padre(X, Y).
progenitor(X, Y) :- madre(X, Y).
hijo(X, Y) :- progenitor(Y, X), hombre(X).
hija(X, Y) :- progenitor(Y, X), mujer(X).
abuelo(X, Z) :- padre(X, Y), progenitor(Y, Z).
abuela(X, Z) :- madre(X, Y), progenitor(Y, Z).
tio(X, Y) :- hermano(X, Z), progenitor(Z, Y).
tia(X, Y) :- hermana(X, Z), progenitor(Z, Y).
primo(X, Y) :- progenitor(P1, X), progenitor(P2, Y), hermano(P1, P2), hombre(X).
primo(X, Y) :- progenitor(P1, X), progenitor(P2, Y), hermana(P1, P2), hombre(X).
prima(X, Y) :- progenitor(P1, X), progenitor(P2, Y), hermano(P1, P2), mujer(X).
prima(X, Y) :- progenitor(P1, X), progenitor(P2, Y), hermana(P1, P2), mujer(X).
esposo(X, Y) :- casados(X, Y), hombre(X).
esposo(X, Y) :- casados(Y, X), hombre(X).
esposa(X, Y) :- casados(X, Y), mujer(X).
esposa(X, Y) :- casados(Y, X), mujer(X).
nieto(X, Y) :- abuelo(Y, X), hombre(X).
nieto(X, Y) :- abuela(Y, X), hombre(X).
nieta(X, Y) :- abuelo(Y, X), mujer(X).
nieta(X, Y) :- abuela(Y, X), mujer(X).
descendientes(X, Descendientes) :- findall(Y, descendiente(X, Y), Descendientes).
descendiente(X, Y) :- progenitor(X, Y).
descendiente(X, Z) :- progenitor(X, Y), descendiente(Y, Z).
ancestros(X, Ancestros) :- findall(Y, ancestro(Y, X), Ancestros).
ancestro(X, Y) :- progenitor(X, Y).
ancestro(X, Z) :- progenitor(X, Y), ancestro(Y, Z).

% -------------------- ENFERMEDADES --------------------
% Sintomas aceptan espacios
sintoma_cancer_rinon('hematuria').
sintoma_cancer_rinon('dolor en el costado').
sintoma_cancer_rinon('masa abdominal').
sintoma_cancer_rinon('perdida de peso').
sintoma_cancer_rinon('fatiga').
sintoma_cancer_rinon('fiebre').
sintoma_cancer_rinon('sudores nocturnos').
sintoma_cancer_rinon('anemia').
sintoma_cancer_rinon('hipertension').
sintoma_cancer_rinon('dolor abdominal').
sintoma_cancer_rinon('hinchazon en las piernas').
sintoma_cancer_rinon('perdida de apetito').

sintoma_paperas('inflamacion glandulas salivales').
sintoma_paperas('dolor mandibula').
sintoma_paperas('fiebre').
sintoma_paperas('dolor de cabeza').
sintoma_paperas('dolor muscular').
sintoma_paperas('fatiga').
sintoma_paperas('perdida apetito').
sintoma_paperas('dolor masticar').
sintoma_paperas('dolor tragar').
sintoma_paperas('sequedad boca').

especialista(cancer_rinon, 'Nefrologo, Oncologo').
tratamiento(cancer_rinon, 'Cirugia, terapia dirigida, inmunoterapia, o radioterapia segun el caso').
recomendaciones(cancer_rinon, [
    'Evitar fumar',
    'Mantener un peso saludable',
    'Controlar la presion arterial',
    'Realizar chequeos periodicos'
]).
causas(cancer_rinon, [
    'Tabaquismo',
    'Obesidad',
    'Presion arterial alta',
    'Exposicion a sustancias toxicas'
]).

especialista(paperas, 'Medico general, Pediatra').
tratamiento(paperas, 'Reposo, hidratacion, medicamentos para la fiebre y dolor. No hay tratamiento especifico, solo sintomatico.').
recomendaciones(paperas, [
    'Reposar',
    'Beber muchos liquidos',
    'Evitar alimentos acidos',
    'Aislarse para no contagiar a otros'
]).
causas(paperas, [
    'Infeccion por el virus de las paperas',
    'Contagio por contacto con saliva de infectados'
]).

menu_info_enfermedad(Enfermedad) :-
    format('¿Quieres saber sobre especialista, tratamiento, recomendaciones o causas para ~w?~n', [Enfermedad]),
    write('Escribe una de estas opciones: especialista, tratamiento, recomendaciones, causas, o "nada" para continuar.'), nl,
    write('> '), flush_output(current_output),
    read_line_to_codes(user_input, InputCodes),
    atom_codes(InputAtom, InputCodes),
    downcase_atom(InputAtom, Resp),
    ( Resp == especialista -> mostrar_especialista(Enfermedad), menu_info_enfermedad(Enfermedad)
    ; Resp == tratamiento   -> mostrar_tratamiento(Enfermedad), menu_info_enfermedad(Enfermedad)
    ; Resp == recomendaciones -> mostrar_recomendaciones(Enfermedad), menu_info_enfermedad(Enfermedad)
    ; Resp == causas -> mostrar_causas(Enfermedad), menu_info_enfermedad(Enfermedad)
    ; Resp == nada -> write('Si tienes mas dudas escribe "ayuda" o consulta a un medico.'), nl
    ; write('Opcion no valida. Prueba otra vez.'), nl, menu_info_enfermedad(Enfermedad)
    ).

mostrar_especialista(E) :- especialista(E, Esp), format('El especialista recomendado es: ~w~n', [Esp]).
mostrar_tratamiento(E) :- tratamiento(E, T), format('Tratamiento sugerido: ~w~n', [T]).
mostrar_recomendaciones(E) :- recomendaciones(E, Recs), write('Recomendaciones generales:'), nl, forall(member(R, Recs), format('- ~w~n', [R])).
mostrar_causas(E) :- causas(E, Cs), write('Causas comunes:'), nl, forall(member(C, Cs), format('- ~w~n', [C])).

% -------------------- ONE DIRECTION --------------------
member_one_direction(harry_styles).
member_one_direction(liam_payne).
member_one_direction(niall_horan).
member_one_direction(louis_tomlinson).
member_one_direction(zayn_malik).

song_one_direction(what_makes_you_beautiful).
song_one_direction(story_of_my_life).
song_one_direction(drag_me_down).
song_one_direction(live_while_were_young).
song_one_direction(steal_my_girl).
song_one_direction(perfect).
song_one_direction(history).
song_one_direction(fireproof).

fact_one_direction(formacion, 'One Direction se formo en 2010 en el programa The X Factor.').
fact_one_direction(separacion, 'La banda anuncio una pausa indefinida en 2016, aunque no una separacion oficial.').
fact_one_direction(primer_exito, 'Su sencillo debut "What Makes You Beautiful" fue un gran exito mundial.').
fact_one_direction(albums, 'Lanzaron cinco albumes de estudio.').
fact_one_direction(zayn, 'Zayn Malik abandono la banda en 2015 para seguir una carrera como solista.').
fact_one_direction(gira, 'Realizaron varias giras mundiales, incluyendo "Take Me Home Tour" y "Where We Are Tour".').

descripcion_one_direction([
    'Claro, One Direction es una boy band britanica-irlandesa formada en 2010 en The X Factor.',
    'Los miembros originales son Harry Styles, Liam Payne, Louis Tomlinson, Niall Horan y Zayn Malik.',
    'Saltaron a la fama rapidamente y lanzaron exitos como "What Makes You Beautiful" y "Story of My Life".',
    'En 2015, Zayn Malik dejo la banda para una carrera como solista.',
    'Actualmente la banda esta en pausa indefinida desde 2016.'
]).

info_integrante_one_direction(harry, 'Harry Styles es conocido por su carrera como solista, su estilo unico y ha ganado multiples premios tras One Direction.').
info_integrante_one_direction(liam, 'Liam Payne es cantante y productor, lanzo musica como solista y participa en obras de caridad.').
info_integrante_one_direction(louis, 'Louis Tomlinson continuo su carrera como solista, participo en shows de TV y es muy querido por los fans.').
info_integrante_one_direction(niall, 'Niall Horan ha lanzado exitos pop/folk y es conocido por su habilidad con la guitarra.').
info_integrante_one_direction(zayn, 'Zayn Malik se fue en 2015 para una carrera R&B solista, logrando varios exitos.').

mostrar_miembros_one_direction :-
    nl, write('------------------------MIEMBROS DE ONE DIRECTION------------------------'), nl,
    forall(member_one_direction(M), format('- ~w~n', [M])),
    write('Zayn Malik dejo la banda en 2015.').

mostrar_canciones_one_direction :-
    nl, write('------------------------CANCIONES POPULARES DE ONE DIRECTION------------------------'), nl,
    forall(song_one_direction(S), format('- ~w~n', [S])).

mostrar_hechos_one_direction :-
    nl, write('------------------------HECHOS SOBRE ONE DIRECTION------------------------'), nl,
    forall(fact_one_direction(Concepto, Hecho), format('- ~w: ~w~n', [Concepto, Hecho])).

mostrar_info_completa_one_direction :-
    mostrar_miembros_one_direction, nl,
    mostrar_canciones_one_direction, nl,
    mostrar_hechos_one_direction, nl.

% --- MAPEO DE INTEGRANTES ONE DIRECTION ---
id_integrante(harry, [harry, styles, "harry styles"]).
id_integrante(liam, [liam, payne, "liam payne"]).
id_integrante(louis, [louis, tomlinson, "louis tomlinson"]).
id_integrante(niall, [niall, horan, "niall horan"]).
id_integrante(zayn, [zayn, malik, "zayn malik"]).

% --- Consulta flexible para miembros de One Direction ---
procesar_entrada(Words, continuar) :-
    integrar_integrante_1d(Words, IdIntegrante), !,
    info_integrante_one_direction(IdIntegrante, Txt), write(Txt), nl.

integrar_integrante_1d(Words, IdIntegrante) :-
    id_integrante(IdIntegrante, AliasList),
    member(Alias, AliasList),
    ( member(Alias, Words) ; atomic_list_concat(AliasWords, ' ', Alias), sublist(AliasWords, Words) ).

% --------- SINTOMA NORMALIZADO (espacios y minusculas) ----------
sintoma_normalizado(Str, SintomaNorm) :-
    string_lower(Str, Lower),
    normalize_space(atom(NormAtom), Lower),
    NormAtom = SintomaNorm.

% --------- TEST DE SINTOMAS ---------
test_enfermedad :-
    write('Te hare 5 preguntas sobre tus sintomas. Escribe un sintoma comun cada vez (ej: fiebre, fatiga, dolor de cabeza, etc.)'), nl,
    pedir_sintomas_espacios(1, [], ListaFinal),
    analizar_sintomas(ListaFinal).

pedir_sintomas_espacios(6, Lista, Lista) :- !.
pedir_sintomas_espacios(N, ListaAcumulada, ListaFinal) :-
    format('Sintoma ~w: ', [N]), flush_output(current_output),
    read_line_to_codes(user_input, InputCodes),
    string_codes(SintomaStr, InputCodes),
    sintoma_normalizado(SintomaStr, SintomaNorm),
    N2 is N + 1,
    pedir_sintomas_espacios(N2, [SintomaNorm|ListaAcumulada], ListaFinal).

contar_coincidencias([], _, 0).
contar_coincidencias([S|Resto], Lista, N) :-
    ( member(S, Lista) -> contar_coincidencias(Resto, Lista, N2), N is N2+1
    ; contar_coincidencias(Resto, Lista, N)
    ).

handle_sintomas_detectados(CR, P) :-
    nl,
    ( CR \== [] ->
        length(CR, NumCR),
        format('Detecte que ~w sintoma(s) que mencionaste (~w) podrian estar relacionados con CANCER DE RINON.~n', [NumCR, CR]),
        write('Te recomiendo consultar a un medico.'), nl,
        menu_info_enfermedad(cancer_rinon)
    ; true
    ),
    ( P \== [] ->
        length(P, NumP),
        format('Detecte que ~w sintoma(s) que mencionaste (~w) podrian estar relacionados con PAPERAS.~n', [NumP, P]),
        write('Te recomiendo consultar a un medico.'), nl,
        menu_info_enfermedad(paperas)
    ; true
    ), nl.

analizar_sintomas(SintomasInversos) :-
    reverse(SintomasInversos, Sintomas),
    findall(S, sintoma_cancer_rinon(S), ListaCR),
    findall(S, sintoma_paperas(S), ListaP),
    contar_coincidencias(Sintomas, ListaCR, CoincCR),
    contar_coincidencias(Sintomas, ListaP, CoincP),
    (CoincCR >= 3 ->
        write('ATENCION: Al menos 3 de tus sintomas coinciden con CANCER DE RINON.'), nl,
        write('Esto no es un diagnostico real, consulta siempre a un medico.'), nl,
        menu_info_enfermedad(cancer_rinon)
    ; CoincP >= 3 ->
        write('Tus sintomas coinciden principalmente con PAPERAS.'), nl,
        write('Esto no es un diagnostico real, consulta siempre a un medico.'), nl,
        menu_info_enfermedad(paperas)
    ; write('No se detectan sintomas claros de cancer de rinon ni paperas en tu caso.'), nl,
      write('Si los sintomas persisten, consulta a un medico.'), nl
    ).

% --------- SALUDOS, AYUDA Y DESPEDIDAS ---------
template_saludo([hola, mi, nombre, es, s(*)], ['Hola', nombre_placeholder, '.', 'En', 'que', 'puedo', 'ayudarte', '?'], [5]).
template_saludo([buenas, tardes, mi, nombre, es, s(*)], ['Buenas', 'tardes', nombre_placeholder, '.', 'Como', 'estas', '?'], [5]).
template_saludo([buenas, noches, soy, s(*)], ['Buenas', 'noches', nombre_placeholder, '.', 'Un', 'placer', 'conocerte', '.'], [4]).
template_saludo([saludos, me, llamo, s(*)], ['Saludos', nombre_placeholder, '!', 'Dime', 'como', 'puedo', 'asistirte', '.'], [4]).
template_saludo([que, tal, soy, s(*)], ['Que', 'tal', nombre_placeholder, '!', 'Listo', 'para', 'tus', 'consultas', '.'], [4]).
template_saludo([hey, que, onda, mi, nombre, es, s(*)], ['Hey', nombre_placeholder, ',', 'que', 'onda', '.', 'Que', 'necesitas', '?'], [7]).
template_saludo([buenos, dias, soy, s(*)], ['Buenos', 'dias', nombre_placeholder, '.', 'Espero', 'que', 'tengas', 'un', 'gran', 'dia', '.', 'Consultas', '?'], [4]).
template_saludo([hola, soy, s(*)], ['Hola', nombre_placeholder, '!', 'Bienvenido/a', '.' ], [3]).
template_saludo([me, presento, soy, s(*)], ['Un', 'gusto', nombre_placeholder, '.', 'Estoy', 'para', 'servirte', '.'], [4]).
template_saludo([hi, i, am, s(*)], ['Hello', nombre_placeholder, ',', 'how', 'can', 'I', 'help', 'you', '?'], [4]).

palabra_despedida_usuario([adios]).
palabra_despedida_usuario([hasta, luego]).
palabra_despedida_usuario([chao]).
palabra_despedida_usuario([nos, vemos]).
palabra_despedida_usuario([bye]).
palabra_despedida_usuario([salir]).
palabra_despedida_usuario([terminar]).
palabra_despedida_usuario([finalizar]).
palabra_despedida_usuario([me, retiro]).
palabra_despedida_usuario([eso, es, todo]).

saludo_bot_template(1, ['Hola', 'Soy', 'tu', 'asistente', 'virtual', 'de', 'salud', 'y', 'genealogia.', 'En', 'que', 'puedo', 'ayudarte', 'hoy']).
saludo_bot_template(2, ['Bienvenido/a.', 'Estoy', 'aqui', 'para', 'darte', 'informacion', 'sobre', 'cancer', 'de', 'rinon,', 'paperas', 'y', 'tu', 'arbol', 'genealogico.']).
saludo_bot_template(3, ['Saludos.', 'Puedes', 'consultarme', 'sobre', 'temas', 'medicos', '(cancer', 'de', 'rinon,', 'paperas)', 'o', 'familiares.', 'Escribe', 'ayuda', 'para', 'mas', 'opciones.']).
saludo_bot_template(4, ['Que', 'bueno', 'verte!', 'Pregunta', 'lo', 'que', 'necesites', 'sobre', 'tu', 'familia', 'o', 'las', 'enfermedades', 'programadas.']).
saludo_bot_template(5, ['Hola,', 'soy', 'Eliza.', 'Tu', 'chatbot', 'personal', 'para', 'genealogia', 'y', 'consultas', 'de', 'salud', 'basicas.']).
saludo_bot_template(6, ['Un', 'cordial', 'saludo.', 'Estoy', 'lista', 'para', 'procesar', 'tus', 'solicitudes.']).
saludo_bot_template(7, ['Hey', 'Listo/a', 'para', 'explorar', 'tu', 'arbol', 'genealogico', 'o', 'aprender', 'sobre', 'salud?']).
saludo_bot_template(8, ['Muy', 'buenas.', 'Tu', 'asistente', 'Eliza', 'esta', 'en', 'linea.']).
saludo_bot_template(9, ['Alo!', 'Espero', 'poder', 'resolver', 'tus', 'dudas', 'hoy.']).
saludo_bot_template(10, ['Bienhallado/a.', 'Comencemos', 'con', 'tus', 'preguntas.']).

despedida_bot_template(1, ['Adios.', 'Espero', 'haber', 'sido', 'de', 'ayuda.']).
despedida_bot_template(2, ['Hasta', 'luego.', 'Cuidate!']).
despedida_bot_template(3, ['Nos', 'vemos.', 'Vuelve', 'pronto', 'si', 'necesitas', 'mas', 'informacion.']).
despedida_bot_template(4, ['Ha', 'sido', 'un', 'placer', 'asistirte.', 'Chiao!']).
despedida_bot_template(5, ['Terminando', 'sesion.', 'Que', 'tengas', 'un', 'excelente', 'dia.']).
despedida_bot_template(6, ['Bye,', 'bye.', 'No', 'dudes', 'en', 'volver!']).
despedida_bot_template(7, ['Finalizando.', 'Si', 'tienes', 'mas', 'preguntas', 'en', 'el', 'futuro,', 'aqui', 'estare.']).
despedida_bot_template(8, ['Entendido.', 'Sesion', 'cerrada.', 'Saludos!']).
despedida_bot_template(9, ['Perfecto.', 'Cualquier', 'otra', 'cosa,', 'ya', 'sabes', 'donde', 'encontrarme.', 'bye', 'bye.']).
despedida_bot_template(10, ['Mision', 'cumplida!', 'Espero', 'verte', 'pronto.']).

downcase_if_not_s_star(Atom, Atom) :- Atom == 's(*)', !.
downcase_if_not_s_star(Atom, Downcased) :- downcase_atom(Atom, Downcased).

unify_with_template([], []).
unify_with_template(['s(*)'|TR], [_NameAtom|WR]) :- unify_with_template(TR, WR).
unify_with_template([H|TR], [H|WR]) :- H \== 's(*)', unify_with_template(TR, WR).

quitar_puntos([], []).
quitar_puntos([W|T], [W2|T2]) :-
    atom_chars(W, Chars),
    ( append(Stem, ['.'], Chars) -> atom_chars(W2, Stem) ; W2 = W ),
    quitar_puntos(T, T2).

replace_first_occurrence([], _, _, []).
replace_first_occurrence([Old|T], Old, New, [New|T]) :- !.
replace_first_occurrence([H|T], Old, New, [H|R]) :- H \= Old, replace_first_occurrence(T, Old, New, R).

capitalizar_nombre(Atom, CapitalizedAtom) :-
    atom_string(Atom, String),
    ( string_length(String, L), L > 0 ->
        sub_string(String, 0, 1, _, FirstChar),
        string_upper(FirstChar, FirstCharUpper),
        ( L > 1 -> sub_string(String, 1, _, 0, RestOfString) ; RestOfString = "" ),
        atom_concat(FirstCharUpper, RestOfString, CapitalizedAtom)
    ; CapitalizedAtom = Atom
    ).

sublist(S, L) :- append(_, R, L), append(S, _, R).

mostrar_saludo_inicial_aleatorio :-
    findall(ID, saludo_bot_template(ID, _), IDs),
    ( IDs \= [] ->
        random_member(SelectedID, IDs),
        saludo_bot_template(SelectedID, MsgList),
        atomic_list_concat(MsgList, ' ', MsgText),
        write(MsgText), nl
    ; write('Hola! Bienvenido a Eliza.'), nl
    ).

handle_despedida_aleatoria :-
    findall(ID, despedida_bot_template(ID, _), IDs),
    ( IDs \= [] ->
        random_member(SelectedID, IDs),
        despedida_bot_template(SelectedID, MsgList),
        atomic_list_concat(MsgList, ' ', MsgText),
        write(MsgText)
    ; write('Adiosin. Vuelve pronto!'), nl
    ).

random_fallback_response(Response) :-
    Responses = [
        ['No', 'entiendo', 'esa', 'pregunta', '.', 'Puedes', 'escribir', 'ayuda', 'para', 'ver', 'opciones', '.'],
        ['Podrias', 'reformular', 'tu', 'pregunta', 'por', 'favor', '?'],
        ['No', 'estoy', 'seguro', 'de', 'haber', 'entendido', '.', 'Intenta', 'con', 'otras', 'palabras', 'o', 'escribe', 'ayuda', '.'],
        ['Mi', 'base', 'de', 'conocimiento', 'es', 'limitada', '.', 'Quizas', 'ayuda', 'te', 'oriente', '.']
    ],
    random_member(Response, Responses).

plural_a_singular(hermanos, hermano).
plural_a_singular(hermanas, hermana).
plural_a_singular(hijos, hijo).
plural_a_singular(hijas, hija).
plural_a_singular(primos, primo).
plural_a_singular(primas, prima).
plural_a_singular(nietos, nieto).
plural_a_singular(nietas, nieta).
plural_a_singular(tios, tio).
plural_a_singular(tias, tia).
plural_a_singular(esposos, esposo).
plural_a_singular(esposas, esposa).

% --------- PROCESAR ENTRADA PRINCIPAL ---------
procesar_entrada(Words, terminar) :-
    palabra_despedida_usuario(Pattern),
    sublist(Pattern, Words), !,
    handle_despedida_aleatoria, nl.

procesar_entrada([ayuda], continuar) :- !, mostrar_ayuda.

procesar_entrada([mostrar, familia], continuar) :- !,
    write('INFORMACION GENEALOGICA COMPLETA'), nl,
    mostrar_arbol_genealogico.

procesar_entrada([test, sintomas], continuar) :- !, test_enfermedad.

% Consultas de One Direction modo exacto
procesar_entrada(Words, continuar) :-
    (Words = [miembros, de, one, direction] ;
     Words = [canciones, de, one, direction] ;
     Words = [hechos, de, one, direction] ;
     Words = [info, completa, one, direction] ;
     Words = [miembros, de, '1d'] ;
     Words = [canciones, de, '1d'] ;
     Words = [hechos, de, '1d'] ;
     Words = [info, completa, '1d']),
    procesar_one_direction(Words), !.

procesar_entrada(Words, continuar) :- 
    member(hablame, Words), member(one, Words), member(direction, Words), !,
    descripcion_one_direction(Descr),
    forall(member(L, Descr), (write(L), nl)),
    write('Puedes preguntarme por integrantes, canciones, historia, o pedirme una recomendacion de cancion.'), nl.

procesar_entrada(Words, continuar) :-
    (member(recomiendame, Words); member(recomienda, Words)), 
    (member(cancion, Words); member(canciones, Words)),
    (member(one, Words); member('1d', Words)), !,
    findall(S, song_one_direction(S), Songs),
    random_member(Song, Songs),
    format('Te recomiendo escuchar: ~w~n', [Song]).

procesar_entrada(Words, continuar) :-
    (member(info, Words); member(informacion, Words)),
    (member(de, Words), member(Integrante, [harry, liam, niall, louis, zayn]), member(Integrante, Words)), !,
    info_integrante_one_direction(Integrante, Txt), write(Txt), nl.

procesar_entrada(Words, continuar) :-
    (member(que, Words); member(cuales, Words)),
    (member(cancion, Words); member(canciones, Words)),
    (member(one, Words); member('1d', Words)), !,
    mostrar_canciones_one_direction.

procesar_entrada(Words, continuar) :-
    (member(info, Words); member(informacion, Words)),
    (member(one, Words); member('1d', Words)), !,
    mostrar_info_completa_one_direction.

procesar_entrada(Words, continuar) :-
    (member(quien, Words); member(quienes, Words)), 
    (member(son, Words), member(integrantes, Words)),
    (member(one, Words); member('1d', Words)), !,
    mostrar_miembros_one_direction.

procesar_entrada(Words, continuar) :-
    (member(hazme, Words); member(dame, Words)), 
    member(trivia, Words),
    (member(one, Words); member('1d', Words)), !,
    mostrar_hechos_one_direction.

procesar_entrada(Words, continuar) :-
    (member(integrante, Words); member(info, Words)),
    (member(one, Words); member('1d', Words)), !,
    write('Puedes preguntarme por info de Harry, Liam, Louis, Niall o Zayn.'), nl.

procesar_entrada(Words, continuar) :- 
    ( (member(one, Words), member(direction, Words)) ; member('1d', Words) ),
    procesar_one_direction(Words), !.

% Genealogia (quien es/tipo plural)
procesar_entrada(Words, continuar) :-
    (Words = [quien, es, RelacionAtom | RestoDe]; Words = [quienes, son, los, RelacionAtom | RestoDe ]; Words = [quienes, son, las, RelacionAtom | RestoDe ]),
    (RestoDe = [de, PersonaAtom] ; RestoDe = [de, la, PersonaAtom]),
    downcase_atom(PersonaAtom, PLower),
    downcase_atom(RelacionAtom, RelacionLower),
    buscar_relacion(RelacionLower, PLower), !, nl.

procesar_entrada(Words, continuar) :-
    append(Persona1_Words, [es|Resto], Words),
    \+ Persona1_Words = [quien], \+ Persona1_Words = [],
    append(Relacion_Words, [de|Persona2_Words], Resto),
    \+ Relacion_Words = [], \+ Persona2_Words = [],
    atomic_list_concat(Persona1_Words, '_', P1Atom),
    atomic_list_concat(Relacion_Words, '_', RelacionAtom),
    atomic_list_concat(Persona2_Words, '_', P2Atom),
    downcase_atom(P1Atom, P1Lower),
    downcase_atom(RelacionAtom, RelacionLower),
    downcase_atom(P2Atom, P2Lower),
    ( plural_a_singular(RelacionLower, RelacionSingular) ; RelacionSingular = RelacionLower ),
    verificar_relacion(P1Lower, RelacionSingular, P2Lower), !, nl.

procesar_entrada(Words, continuar) :-
    ( member(tengo, Words) ; member(siento, Words) ; member(padezco, Words) ),
    findall(S, (sintoma_cancer_rinon(S), member(S, Words)), SintomasCRDetectados),
    findall(S, (sintoma_paperas(S), member(S, Words)), SintomasPDetectados),
    ( (SintomasCRDetectados \= [] ; SintomasPDetectados \= []) ->
        handle_sintomas_detectados(SintomasCRDetectados, SintomasPDetectados), !
    ;   fail
    ).

procesar_entrada(Words, continuar) :-
    member(cancer, Words), member(rinon, Words),
    mostrar_sintomas_cancer_rinon, nl.

procesar_entrada(Words, continuar) :-
    member(paperas, Words),
    mostrar_sintomas_paperas, nl.

procesar_entrada(Words, continuar) :-
    quitar_puntos(Words, WordsSinPunto),
    template_saludo(Pattern, ResponseTemplate, [PosNombreEnInput]),
    unify_with_template(Pattern, WordsSinPunto),
    nth1(PosNombreEnInput, WordsSinPunto, NombreAtom), 
    capitalizar_nombre(NombreAtom, NombreCapitalizado),
    replace_first_occurrence(ResponseTemplate, nombre_placeholder, CapitalizedNombre, FinalResponseList),
    atomic_list_concat(FinalResponseList, ' ', ResponseText),
    write(ResponseText), nl, !.

procesar_entrada(_, continuar) :-
    random_fallback_response(ResponseList),
    atomic_list_concat(ResponseList, ' ', ResponseText),
    write(ResponseText), nl.

% --------- FUNCIONES MOSTRAR DATOS ---------
mostrar_ayuda :-
    nl, write('------------------------ MENU DE AYUDA ------------------------'), nl,
    write('Soy Eliza, tu asistente.'), nl,
    write('1. Puedes preguntarme por tu arbol genealogico (ejemplo: "quien es abuelo de isabel"),'), nl,
    write('2. Sobre enfermedades ("test sintomas", "sintomas de cancer de rinon", "sintomas de paperas"),'), nl,
    write('3. Sobre One Direction ("miembros de one direction", "canciones de one direction"),'), nl,
    write('O decirme chao :(.'), nl, nl.

mostrar_sintomas_cancer_rinon :-
    nl, write('------------------------SINTOMAS DEL CANCER DE RINON------------------------'), nl,
    forall(sintoma_cancer_rinon(S), format('- ~w~n', [S])).

mostrar_sintomas_paperas :-
    nl, write('------------------------SINTOMAS DE LAS PAPERAS------------------------'), nl,
    forall(sintoma_paperas(S), format('- ~w~n', [S])).

mostrar_arbol_genealogico :-
    nl, write('PERSONAS REGISTRADAS (HOMBRES):'), nl,
    forall(hombre(H), format('- ~w~n', [H])), nl,
    write('PERSONAS REGISTRADAS (MUJERES):'), nl,
    forall(mujer(M), format('- ~w~n', [M])), nl,
    write('MATRIMONIOS REGISTRADOS:'), nl,
    forall(casados(P1, P2), format('- ~w y ~w estan casados.~n', [P1, P2])), nl,
    write('RELACIONES PADRE/MADRE-HIJO/A:'), nl,
    forall(progenitor(Prog, Hijo), format('- ~w es progenitor(a) de ~w.~n', [Prog, Hijo])), nl.

verificar_relacion(P1, Relacion, P2) :-
    Goal =.. [Relacion, P1, P2],
    ( call(Goal) ->
        format('Si, segun mi informacion, ~w es ~w de ~w.~n', [P1, Relacion, P2])
    ;
        format('No, segun mi informacion, ~w NO es ~w de ~w, o no tengo datos suficientes.~n', [P1, Relacion, P2])
    ).

buscar_relacion(Relacion, P) :-
    RelacionPermitida = [padre, madre, abuelo, abuela, hermano, hermana, hermanos, hermanas, tio, tia, primo, prima, esposo, esposa, hijo, hija, nieto, nieta, progenitor, descendiente, ancestro, hijos],
    ( member(Relacion, RelacionPermitida) ->
        ( (Relacion = hermanos ; Relacion = hermanas ; Relacion = hijos) ->
            ( Relacion = hermanos ->
                findall(X, (hermano(X, P) ; hermana(X, P)), Todos), ListName = 'hermanos/as'
            ; Relacion = hermanas ->
                findall(X, hermana(X, P), Todos), ListName = 'hermanas'
            ; Relacion = hijos ->
                findall(X, progenitor(P, X), Todos), ListName = 'hijos/as'
            )
        ;
            Goal =.. [Relacion, X, P],
            findall(X, call(Goal), Todos),
            ListName = Relacion
        ),
        ( Todos = [] ->
            format('No encontre ~ws de ~w en la base de datos.~n', [ListName, P])
        ;
            format('El/La/Los/Las ~ws de ~w son: ~w~n', [ListName, P, Todos])
        )
    ;
        format('Lo siento, no puedo buscar la relacion "~w". Intenta con relaciones conocidas (padre, hijo, hermanos, etc.).~n', [Relacion])
    ).

% --------- SECCION ONE DIRECTION ---------
procesar_one_direction(Words) :-
    (member(miembros, Words) ; member('miembros', Words)), !, mostrar_miembros_one_direction, nl.
procesar_one_direction(Words) :-
    (member(canciones, Words) ; member('canciones', Words)), !, mostrar_canciones_one_direction, nl.
procesar_one_direction(Words) :-
    (member(hechos, Words) ; member('hechos', Words)), !, mostrar_hechos_one_direction, nl.
procesar_one_direction(Words) :-
    (member(info, Words), member(completa, Words)), !, mostrar_info_completa_one_direction, nl.
procesar_one_direction(_) :- mostrar_info_completa_one_direction, nl.

% --------- INICIO ELIZA ---------
eliza :-
    mostrar_saludo_inicial_aleatorio,
    write('Soy un programa de salud y genealogia.'), nl,
    write('Puedes preguntarme sobre tus sintomas, tratamientos, o relaciones familiares.'), nl,
    write('Escribe "ayuda" para ver el menu o "salir" para terminar.'), nl,
    eliza_loop.

eliza_loop :-
    write('> '), flush_output(current_output),
    read_line_to_codes(user_input, InputCodes),
    ( InputCodes == end_of_file ->
        handle_despedida_aleatoria, nl
    ; InputCodes == [] ->
        write('Por favor, escribe algo o "salir" para terminar.'), nl,
        eliza_loop
    ;
        atom_codes(InputAtom, InputCodes),
        ( InputAtom == '' ->
            write('Por favor, escribe algo o "salir" para terminar.'), nl,
            eliza_loop
        ;
            atomic_list_concat(WordAtoms, ' ', InputAtom),
            maplist(downcase_if_not_s_star, WordAtoms, Words),
            procesar_entrada(Words, Action),
            ( Action == terminar ->
                true
            ;
                eliza_loop
            )
     
        )
    ).
