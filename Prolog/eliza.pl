
% Hechos básicos: padre(Padre, Hijo)
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
padre(rodrigo, david_hijo).

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
padre(david_hijo, davicito).
padre(david_hijo, izack).
padre(david_hijo, mia).

% madre(Madre, Hijo)
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
madre(maria_isabel, david_hijo).

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

% Relaciones matrimoniales
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
casados(david_hijo, diana_s).

en_relacion(isabel, raul).

% hombre/mujer
hombre(david). 
hombre(gabino). 
hombre(rodrigo). 
hombre(antonio). 
hombre(roman).
hombre(roberto). 
hombre(nect). 
hombre(chavo). 
hombre(agustin). 
hombre(nicolas).
hombre(pedro). 
hombre(gabino_j). 
hombre(david_hijo). 
hombre(antonio_j). 
hombre(ramon).
hombre(roman_j). 
hombre(cesar). 
hombre(roberto_j). 
hombre(brayan).
 hombre(nectalyn).
hombre(pablo). 
hombre(juan). 
hombre(francisco). 
hombre(jorge). 
hombre(jose).
hombre(diego). 
hombre(nenon). 
hombre(miguel). 
hombre(julio). 
hombre(davicito).
hombre(izack). 
hombre(raul).

mujer(maurilia). 
mujer(maria_gregoria).
 mujer(maria_isabel). 
 mujer(salud). 
 mujer(ramona).
mujer(rosa). 
mujer(mari). 
mujer(alejandra). mujer(cristina). mujer(rosario).
mujer(mercedes). mujer(isabel). mujer(cassandra). mujer(maury). mujer(jenny).
mujer(andrea). mujer(diana). mujer(wendy). mujer(fernanda). mujer(jessenia).
mujer(nancy). mujer(lizet). mujer(esmeralda). mujer(rubi). mujer(valeria).
mujer(yamilet). mujer(hellen). mujer(diana_s). mujer(mia).

% --- ENFERMEDADES ---
% Cáncer de riñón
sintoma_cancer_rinon(hematuria).
sintoma_cancer_rinon(dolor_en_el_costado).
sintoma_cancer_rinon(masa_abdominal).
sintoma_cancer_rinon(perdida_de_peso).
sintoma_cancer_rinon(fatiga).
sintoma_cancer_rinon(fiebre).
sintoma_cancer_rinon(sudores_nocturnos).
sintoma_cancer_rinon(anemia).
sintoma_cancer_rinon(hipertension).
sintoma_cancer_rinon(dolor_abdominal).
sintoma_cancer_rinon(hinchazon_en_las_piernas).
sintoma_cancer_rinon(perdida_de_apetito).

factor_riesgo_cancer_rinon(tabaquismo).
factor_riesgo_cancer_rinon(obesidad).
factor_riesgo_cancer_rinon(hipertension_arterial).
factor_riesgo_cancer_rinon(enfermedad_renal_cronica).
factor_riesgo_cancer_rinon(dialisis_prolongada).
factor_riesgo_cancer_rinon(antecedentes_familiares).
factor_riesgo_cancer_rinon(exposicion_quimicos).
factor_riesgo_cancer_rinon(edad_avanzada).
factor_riesgo_cancer_rinon(sexo_masculino).
factor_riesgo_cancer_rinon(sindrome_genetico).

tratamiento_cancer_rinon(nefrectomia_parcial).
tratamiento_cancer_rinon(nefrectomia_radical).
tratamiento_cancer_rinon(ablacion_termica).
tratamiento_cancer_rinon(inmunoterapia).
tratamiento_cancer_rinon(terapia_dirigida).
tratamiento_cancer_rinon(quimioterapia).
tratamiento_cancer_rinon(radioterapia).
tratamiento_cancer_rinon(embolizacion_arterial).

tipo_cancer_rinon(carcinoma_celulas_renales).
tipo_cancer_rinon(carcinoma_urotelial).
tipo_cancer_rinon(sarcoma_renal).
tipo_cancer_rinon(linfoma_renal).

% Paperas
sintoma_paperas(inflamacion_glandulas_salivales).
sintoma_paperas(dolor_mandibula).
sintoma_paperas(fiebre).
sintoma_paperas(dolor_de_cabeza).
sintoma_paperas(dolor_muscular).
sintoma_paperas(fatiga).
sintoma_paperas(perdida_apetito).
sintoma_paperas(dolor_masticar).
sintoma_paperas(dolor_tragar).
sintoma_paperas(sequedad_boca).

complicacion_paperas(meningitis).
complicacion_paperas(encefalitis).
complicacion_paperas(orquitis).
complicacion_paperas(ooforitis).
complicacion_paperas(pancreatitis).
complicacion_paperas(sordera).
complicacion_paperas(mastitis).

tratamiento_paperas(reposo).
tratamiento_paperas(analgesicos).
tratamiento_paperas(antiinflamatorios).
tratamiento_paperas(hidratacion).
tratamiento_paperas(compresas_frias).
tratamiento_paperas(dieta_blanda).
tratamiento_paperas(aislamiento).

prevencion_paperas(vacuna_mmr).
prevencion_paperas(evitar_contacto_infectados).
prevencion_paperas(lavado_manos_frecuente).
prevencion_paperas(no_compartir_utensilios).

% --- ONE DIRECTION ---
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

fact_one_direction(formacion, 'One Direction se formó en 2010 en el programa The X Factor.').
fact_one_direction(separacion, 'La banda anunció una pausa indefinida en 2016, aunque no una separación oficial.').
fact_one_direction(primer_exito, 'Su sencillo debut "What Makes You Beautiful" fue un gran éxito mundial.').
fact_one_direction(albums, 'Lanzaron cinco álbumes de estudio.').
fact_one_direction(zayn, 'Zayn Malik dejó la banda en 2015 para seguir una carrera como solista.').

% -- REGLAS DERIVADAS (GENEALOGÍA) --

progenitor(X, Y) :- padre(X, Y).
progenitor(X, Y) :- madre(X, Y).
hijo(X, Y) :- progenitor(Y, X), hombre(X).
hija(X, Y) :- progenitor(Y, X), mujer(X).
abuelo(X, Z) :- padre(X, Y), progenitor(Y, Z).
abuela(X, Z) :- madre(X, Y), progenitor(Y, Z).
hermano(X, Y) :- progenitor(P, X), progenitor(P, Y), X \= Y, hombre(X).
hermana(X, Y) :- progenitor(P, X), progenitor(P, Y), X \= Y, mujer(X).
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

% -- SALUDOS Y DESPEDIDAS --

template_saludo([hola, mi, nombre, es, s(*)], ['Hola', nombre_placeholder, '.', '¿En', 'qué', 'puedo', 'ayudarte', '?'], [5]).
template_saludo([buenas, tardes, mi, nombre, es, s(*)], ['Buenas', 'tardes', nombre_placeholder, '.', '¿Cómo', 'estás', '?'], [5]).
template_saludo([buenas, noches, soy, s(*)], ['Buenas', 'noches', nombre_placeholder, '.', 'Un', 'placer', 'conocerte', '.'], [4]).
template_saludo([saludos, me, llamo, s(*)], ['Saludos', nombre_placeholder, '!', 'Dime', 'cómo', 'puedo', 'asistirte', '.'], [4]).
template_saludo([que, tal, soy, s(*)], ['Qué', 'tal', nombre_placeholder, '!', 'Listo', 'para', 'tus', 'consultas', '.'], [4]).
template_saludo([hey, que, onda, mi, nombre, es, s(*)], ['Hey', nombre_placeholder, ',', 'qué', 'onda', '.', '¿Qué', 'necesitas', '?'], [7]).
template_saludo([buenos, dias, soy, s(*)], ['Buenos', 'días', nombre_placeholder, '.', 'Espero', 'que', 'tengas', 'un', 'gran', 'día', '.', '¿Consultas', '?'], [4]).
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

saludo_bot_template(1, ['Hola', 'Soy', 'tu', 'asistente', 'virtual', 'de', 'salud', 'y', 'genealogia.', '¿En', 'que', 'puedo', 'ayudarte', 'hoy']).
saludo_bot_template(2, ['Bienvenido/a.', 'Estoy', 'aqui', 'para', 'darte', 'informacion', 'sobre', 'cancer', 'de', 'rinon,', 'paperas', 'y', 'tu', 'arbol', 'genealogico.']).
saludo_bot_template(3, ['Saludos.', 'Puedes', 'consultarme', 'sobre', 'temas', 'medicos', '(cancer', 'de', 'rinon,', 'paperas)', 'o', 'familiares.', 'Escribe', '"ayuda"', 'para', 'mas', 'opciones.']).
saludo_bot_template(4, ['Que', 'bueno', 'verte!', 'Pregunta', 'lo', 'que', 'necesites', 'sobre', 'tu', 'familia', 'o', 'las', 'enfermedades', 'programadas.']).
saludo_bot_template(5, ['Hola,', 'soy', 'Eliza.', 'Tu', 'chatbot', 'personal', 'para', 'genealogia', 'y', 'consultas', 'de', 'salud', 'basicas.']).
saludo_bot_template(6, ['Un', 'cordial', 'saludo.', 'Estoy', 'lista', 'para', 'procesar', 'tus', 'solicitudes.']).
saludo_bot_template(7, ['Hey', 'Listo/a', 'para', 'explorar', 'tu', 'arbol', 'genealogico', 'o', 'aprender', 'sobre', 'salud?']).
saludo_bot_template(8, ['Muy', 'buenas.', 'Tu', 'asistente', 'Eliza', 'esta', 'en', 'linea.']).
saludo_bot_template(9, ['Alo!', 'Espero', 'poder', 'resolver', 'tus', 'dudas', 'hoy.']).
saludo_bot_template(10, ['Bienhallado/a.', 'Comencemos', 'con', 'tus', 'preguntas.']).

despedida_bot_template(1, ['Adios.', 'Espero', 'haber', 'sido', 'de', 'ayuda.']).
despedida_bot_template(2, ['Hasta', 'luego.', 'Cudate!']).
despedida_bot_template(3, ['Nos', 'vemos.', 'Vuelve', 'pronto', 'si', 'necesitas', 'mas', 'informacion.']).
despedida_bot_template(4, ['Ha', 'sido', 'un', 'placer', 'asistirte.', 'Chiao!']).
despedida_bot_template(5, ['Terminando', 'sesion.', 'Que', 'tengas', 'un', 'excelente', 'dia.']).
despedida_bot_template(6, ['Bye,', 'bye.', '¡No', 'dudes', 'en', 'volver!']).
despedida_bot_template(7, ['Finalizando.', 'Si', 'tienes', 'mas', 'preguntas', 'en', 'el', 'futuro,', 'aqui', 'estare.']).
despedida_bot_template(8, ['Entendido.', 'Sesion', 'cerrada.', '¡Saludos!']).
despedida_bot_template(9, ['Perfecto.', 'Cualquier', 'otra', 'cosa,', 'ya', 'sabes', 'donde', 'encontrarme.', 'bye', 'bye.']).
despedida_bot_template(10, ['¡Mision', 'cumplida!', 'Espero', 'verte', 'pronto.']).

% -- INICIO ELIZA --

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

% -- PROCESAR ENTRADA PRINCIPAL --

procesar_entrada(Words, terminar) :-
    palabra_despedida_usuario(Pattern),
    sublist(Pattern, Words), !,
    handle_despedida_aleatoria, nl.

procesar_entrada([ayuda], continuar) :- !, mostrar_ayuda.

procesar_entrada([mostrar, familia], continuar) :- !,
    write('--- INFORMACIÓN GENEALOGICA COMPLETA ---'), nl,
    mostrar_arbol_genealogico.

% Consulta plural tipo "quienes son los hermanos/hermanas de X"
procesar_entrada(Words, continuar) :-
    (Words = [quien, es, RelacionAtom | RestoDe]; Words = [quienes, son, los, RelacionAtom | RestoDe ]; Words = [quienes, son, las, RelacionAtom | RestoDe ]),
    (RestoDe = [de, PersonaAtom] ; RestoDe = [de, la, PersonaAtom]),
    downcase_atom(PersonaAtom, PLower),
    downcase_atom(RelacionAtom, RelacionLower),
    buscar_relacion(RelacionLower, PLower), !, nl.

% Consulta "X es RELACION de Y"
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

% Diagnóstico de síntomas
procesar_entrada(Words, continuar) :-
    ( member(tengo, Words) ; member(siento, Words) ; member(padezco, Words) ),
    findall(S, (sintoma_cancer_rinon(S), member(S, Words)), SintomasCRDetectados),
    findall(S, (sintoma_paperas(S), member(S, Words)), SintomasPDetectados),
    ( (SintomasCRDetectados \= [] ; SintomasPDetectados \= []) ->
        handle_sintomas_detectados(SintomasCRDetectados, SintomasPDetectados), !
    ;   fail
    ).

% Cáncer de riñón
procesar_entrada(Words, continuar) :-
    member(cancer, Words), member(rinon, Words),
    procesar_cancer_rinon(Words), !.

% Paperas
procesar_entrada(Words, continuar) :-
    member(paperas, Words),
    procesar_paperas(Words), !.

% One Direction (va antes del saludo y fallback)
procesar_entrada(Words, continuar) :-
    ( (member(one, Words), member(direction, Words)) ; member('1d', Words) ),
    procesar_one_direction(Words), !.

% Saludos flexibles
procesar_entrada(Words, continuar) :-
    quitar_puntos(Words, WordsSinPunto),
    template_saludo(Pattern, ResponseTemplate, [PosNombreEnInput]),
    unify_with_template(Pattern, WordsSinPunto),
    nth1(PosNombreEnInput, WordsSinPunto, NombreAtom), 
    capitalizar_nombre(NombreAtom, NombreCapitalizado),
    replace_first_occurrence(ResponseTemplate, nombre_placeholder, NombreCapitalizado, FinalResponseList),
    atomic_list_concat(FinalResponseList, ' ', ResponseText),
    write(ResponseText), nl, !.

% Fallback
procesar_entrada(_, continuar) :-
    random_fallback_response(ResponseList),
    atomic_list_concat(ResponseList, ' ', ResponseText),
    write(ResponseText), nl.

% -- FUNCIONES AUXILIARES, PRESENTACIÓN Y RANDOM --

mostrar_ayuda :-
    nl, write('-------------------------------- MENU DE AYUDA --------------------------------'), nl,
    write('Hola! Soy Eliza, tu asistente. Puedo ayudarte con:'), nl,
    write('1. GENEALOGIA:'), nl,
    write('   - Consulta relaciones: "david es padre de rodrigo", "quien es abuela de isabel"'), nl,
    write('   - Ver toda la familia: "mostrar familia"'), nl,
    write('2. INFORMACION DE ENFERMEDADES:'), nl,
    write('   CANCER DE RINON:'), nl,
    write('     - "sintomas de cancer de rinon"'), nl,
    write('     - "tratamientos para cancer de rinon"'), nl,
    write('     - "factores de riesgo cancer de rinon"'), nl,
    write('     - "tipos de cancer de rinon"'), nl,
    write('     - "info completa cancer de rinon" o solo "cancer rinon"'), nl,
    write('   PAPERAS:'), nl,
    write('     - "sintomas de paperas"'), nl,
    write('     - "tratamientos para paperas"'), nl,
    write('     - "complicaciones de las paperas"'), nl,
    write('     - "prevencion de paperas"'), nl,
    write('     - "info completa paperas" o solo "paperas"'), nl,
    write('3. DIAGNOSTICO BASICO (EXPERIMENTAL):'), nl,
    write('   - Describe tus sintomas: "tengo fiebre y fatiga"'), nl,
    write('     (Siempre consulta a un medico para un diagnostico real)'), nl,
    write('4. INFORMACION GENERAL ONE DIRECTION:'), nl,
    write('     - "miembros de one direction"'), nl,
    write('     - "canciones de one direction"'), nl,
    write('     - "hechos de one direction"'), nl,
    write('     - "info completa one direction" o solo "one direction" o "1d"'), nl,
    write('5. INTERACCIONES:'), nl,
    write('   - Saludame: "hola mi nombre es [tu_nombre]"'), nl,
    write('   - Pide ayuda: "ayuda"'), nl,
    write('   - Termina la conversacion: "salir", "adios", "chao", etc.'), nl,
    write('----------------------------------------------------------------------------------'), nl, nl.

mostrar_sintomas_cancer_rinon :-
    nl, write('--- SINTOMAS DEL CANCER DE RINON ---'), nl,
    forall(sintoma_cancer_rinon(S), format('- ~w~n', [S])),
    write('Otros posibles: hinchazon de tobillos, perdida de apetito, cansancio extremo.'), nl.

mostrar_tratamientos_cancer_rinon :-
    nl, write('--- TRATAMIENTOS PARA EL CANCER DE RINON ---'), nl,
    forall(tratamiento_cancer_rinon(T), format('- ~w~n', [T])),
    write('El tratamiento especifico depende del estadio y tipo de cancer, y la salud general del paciente.'), nl.

mostrar_factores_riesgo_cancer_rinon :-
    nl, write('--- FACTORES DE RIESGO DEL CANCER DE RINON ---'), nl,
    forall(factor_riesgo_cancer_rinon(F), format('- ~w~n', [F])).

mostrar_tipos_cancer_rinon :-
    nl, write('--- TIPOS DE CANCER DE RINON ---'), nl,
    forall(tipo_cancer_rinon(T), format('- ~w~n', [T])).

mostrar_info_completa_cancer_rinon :-
    nl, write('======== INFORMACIÓN COMPLETA: CANCER DE RINON ========'), nl,
    mostrar_sintomas_cancer_rinon, nl,
    mostrar_factores_riesgo_cancer_rinon, nl,
    mostrar_tipos_cancer_rinon, nl,
    mostrar_tratamientos_cancer_rinon,
    write('========================================================='), nl.

mostrar_sintomas_paperas :-
    nl, write('--- SINTOMAS DE LAS PAPERAS ---'), nl,
    forall(sintoma_paperas(S), format('- ~w~n', [S])).

mostrar_tratamientos_paperas :-
    nl, write('--- TRATAMIENTOS PARA LAS PAPERAS ---'), nl,
    forall(tratamiento_paperas(T), format('- ~w~n', [T])),
    write('Generalmente, el tratamiento es de soporte, ya que es una infección viral.'), nl.

mostrar_complicaciones_paperas :-
    nl, write('--- POSIBLES COMPLICACIONES DE LAS PAPERAS ---'), nl,
    forall(complicacion_paperas(C), format('- ~w~n', [C])),
    write('Las complicaciones son raras pero pueden ser serias.'), nl.

mostrar_prevencion_paperas :-
    nl, write('--- PREVENCION DE LAS PAPERAS ---'), nl,
    forall(prevencion_paperas(P), format('- ~w~n', [P])).

mostrar_info_completa_paperas :-
    nl, write('============= INFORMACION COMPLETA: PAPERAS ============'), nl,
    mostrar_sintomas_paperas, nl,
    mostrar_complicaciones_paperas, nl,
    mostrar_tratamientos_paperas, nl,
    mostrar_prevencion_paperas,
    write('========================================================'), nl.

mostrar_miembros_one_direction :-
    nl, write('--- MIEMBROS DE ONE DIRECTION ---'), nl,
    forall(member_one_direction(M), format('- ~w~n', [M])),
    write('Zayn Malik dejó la banda en 2015.').

mostrar_canciones_one_direction :-
    nl, write('--- CANCIONES POPULARES DE ONE DIRECTION ---'), nl,
    forall(song_one_direction(S), format('- ~w~n', [S])).

mostrar_hechos_one_direction :-
    nl, write('--- HECHOS INTERESANTES SOBRE ONE DIRECTION ---'), nl,
    forall(fact_one_direction(Concepto, Hecho), format('- ~w: ~w~n', [Concepto, Hecho])).

mostrar_info_completa_one_direction :-
    nl, write('======== INFORMACIÓN COMPLETA: ONE DIRECTION ========'), nl,
    mostrar_miembros_one_direction, nl,
    mostrar_canciones_one_direction, nl,
    mostrar_hechos_one_direction,
    write('====================================================='), nl.

procesar_cancer_rinon(Words) :- member(sintomas, Words), !, mostrar_sintomas_cancer_rinon, nl.
procesar_cancer_rinon(Words) :- member(tratamientos, Words), !, mostrar_tratamientos_cancer_rinon, nl.
procesar_cancer_rinon(Words) :- (member(factores, Words); member(riesgo, Words)), !, mostrar_factores_riesgo_cancer_rinon, nl.
procesar_cancer_rinon(Words) :- member(tipos, Words), !, mostrar_tipos_cancer_rinon, nl.
procesar_cancer_rinon(_) :- mostrar_info_completa_cancer_rinon, nl.

procesar_paperas(Words) :- member(sintomas, Words), !, mostrar_sintomas_paperas, nl.
procesar_paperas(Words) :- member(tratamientos, Words), !, mostrar_tratamientos_paperas, nl.
procesar_paperas(Words) :- member(complicaciones, Words), !, mostrar_complicaciones_paperas, nl.
procesar_paperas(Words) :- member(prevencion, Words), !, mostrar_prevencion_paperas, nl.
procesar_paperas(_) :- mostrar_info_completa_paperas, nl.

procesar_one_direction(Words) :- member(miembros, Words), !, mostrar_miembros_one_direction, nl.
procesar_one_direction(Words) :- member(canciones, Words), !, mostrar_canciones_one_direction, nl.
procesar_one_direction(Words) :- member(hechos, Words), !, mostrar_hechos_one_direction, nl.
procesar_one_direction(_) :- mostrar_info_completa_one_direction, nl.

handle_sintomas_detectados(CR, P) :-
    nl,
    ( CR \== [] ->
        length(CR, NumCR),
        format('Detecte que ~w sintoma que mencionaste (~w) que podrian estar relacionados con CANCER DE RINON.~n', [NumCR, CR]),
        write('Recuerda que yo no soy un medico, que esta es solo informacion general y NO un diagnostico. Debes consultar a un medico de verdad.'), nl,
        write('Si deseas, puedo mostrarte mas detalles sobre sintomas, factores de riesgo o tratamientos.'), nl
    ; true
    ),
    ( P \== [] ->
        length(P, NumP),
        format('Detecte que ~w sontoma que mencionaste (~w) que podrian estar relacionados con PAPERAS.~n', [NumP, P]),
        write('Recuerda que yo no soy un medico, que esta es solo informacion general y NO un diagnostico. Debes consultar a un medico de verdad.'), nl,
        write('Si deseas, puedo mostrarte mas detalles sobre sintomas, complicaciones o tratamientos.'), nl
    ; true
    ), nl.

mostrar_arbol_genealogico :-
    nl,
    write('PERSONAS REGISTRADAS (HOMBRES):'), nl,
    forall(hombre(H), format('- ~w~n', [H])), nl,
    write('PERSONAS REGISTRADAS (MUJERES):'), nl,
    forall(mujer(M), format('- ~w~n', [M])), nl,
    write('MATRIMONIOS REGISTRADOS:'), nl,
    forall(casados(P1, P2), format('- ~w y ~w están casados.~n', [P1, P2])), nl,
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
    ; write('¡Hola! Bienvenido a Eliza.'), nl
    ).

handle_despedida_aleatoria :-
    findall(ID, despedida_bot_template(ID, _), IDs),
    ( IDs \= [] ->
        random_member(SelectedID, IDs),
        despedida_bot_template(SelectedID, MsgList),
        atomic_list_concat(MsgList, ' ', MsgText),
        write(MsgText)
    ; write('Adiosin. ¡Vuelve pronto!'), nl
    ).

random_fallback_response(Response) :-
    Responses = [
        ['No', 'entiendo', 'esa', 'pregunta', '.', 'Puedes', 'escribir', '"ayuda"', 'para', 'ver', 'opciones', '.'],
        ['¿Podrías', 'reformular', 'tu', 'pregunta', 'por', 'favor', '?'],
        ['No', 'estoy', 'seguro', 'de', 'haber', 'entendido', '.', 'Intenta', 'con', 'otras', 'palabras', 'o', 'escribe', '"ayuda"', '.'],
        ['Mi', 'base', 'de', 'conocimiento', 'es', 'limitada', '.', 'Quizas', '"ayuda"', 'te', 'oriente', '.']
    ],
    random_member(Response, Responses).

% Para iniciar el chatbot: ?- eliza.

?- terminar.