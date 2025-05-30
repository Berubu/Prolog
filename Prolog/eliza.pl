% :- use_module(library(random)). % Descomentar si tu entorno Prolog lo requiere para random_member/2
% :- use_module(library(lists)).  % Para sublist/2, nth1/3, member/2, append/3 (usualmente pre-cargadas)

% HECHOS: BASE DE CONOCIMIENTO (GENEALOGIA Y MEDICA)

% Hechos basicos: padre(Padre, Hijo)
% Abuelos paternos
padre(david, rodrigo).
% Abuelos maternos  
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

% Padres de Isabel y hermanos
padre(rodrigo, isabel).
padre(rodrigo, cassandra).
padre(rodrigo, maury).
padre(rodrigo, david_hijo).

% Esposos de las tias
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

% Nueva generacion
padre(miguel, esmeralda).
padre(miguel, rubi).
padre(julio, valeria).
padre(julio, yamilet).
padre(julio, hellen).
padre(david_hijo, davicito).
padre(david_hijo, izack).
padre(david_hijo, mia).

% Hechos basicos: madre(Madre, Hijo)
% Abuelas
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

% Madre de Isabel y hermanos
madre(maria_isabel, isabel).
madre(maria_isabel, cassandra).
madre(maria_isabel, maury).
madre(maria_isabel, david_hijo).

% Esposas de los tiops
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

% Nueva generacion
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

% Relación actual
en_relacion(isabel, raul).

% Hechos basicos: hombre(Persona)
hombre(david). hombre(gabino). hombre(rodrigo). hombre(antonio). hombre(roman).
hombre(roberto). hombre(nect). hombre(chavo). hombre(agustin). hombre(nicolas).
hombre(pedro). hombre(gabino_j). hombre(david_hijo). hombre(antonio_j). hombre(ramon).
hombre(roman_j). hombre(cesar). hombre(roberto_j). hombre(brayan). hombre(nectalyn).
hombre(pablo). hombre(juan). hombre(francisco). hombre(jorge). hombre(jose).
hombre(diego). hombre(nenon). hombre(miguel). hombre(julio). hombre(davicito).
hombre(izack). hombre(raul).

% Hechos basicos: mujer(Persona)
mujer(maurilia). mujer(maria_gregoria). mujer(maria_isabel). mujer(salud). mujer(ramona).
mujer(rosa). mujer(mari). mujer(alejandra). mujer(cristina). mujer(rosario).
mujer(mercedes). mujer(isabel). mujer(cassandra). mujer(maury). mujer(jenny).
mujer(andrea). mujer(diana). mujer(wendy). mujer(fernanda). mujer(jessenia).
mujer(nancy). mujer(lizet). mujer(esmeralda). mujer(rubi). mujer(valeria).
mujer(yamilet). mujer(hellen). mujer(diana_s). mujer(mia).

% --- CANCER DE RIÑON ---
% Síntomas (usar átomos simples para facilitar el match con entrada de usuario)
sintoma_cancer_rinon(hematuria). % sangre_orina
sintoma_cancer_rinon(dolor_costado).
sintoma_cancer_rinon(masa_abdominal).
sintoma_cancer_rinon(perdida_peso).
sintoma_cancer_rinon(fatiga).
sintoma_cancer_rinon(fiebre). % fiebre_intermitente
sintoma_cancer_rinon(sudores_nocturnos).
sintoma_cancer_rinon(anemia).
sintoma_cancer_rinon(hipertension).
sintoma_cancer_rinon(dolor_abdominal).
sintoma_cancer_rinon(hinchazon_piernas).
sintoma_cancer_rinon(perdida_apetito).

% Factores de riesgo
factor_riesgo_cancer_rinon(tabaquismo). factor_riesgo_cancer_rinon(obesidad).
factor_riesgo_cancer_rinon(hipertension_arterial). factor_riesgo_cancer_rinon(enfermedad_renal_cronica).
factor_riesgo_cancer_rinon(dialisis_prolongada). factor_riesgo_cancer_rinon(antecedentes_familiares).
factor_riesgo_cancer_rinon(exposicion_quimicos). factor_riesgo_cancer_rinon(edad_avanzada).
factor_riesgo_cancer_rinon(sexo_masculino). factor_riesgo_cancer_rinon(sindrome_genetico).

% Tratamientos
tratamiento_cancer_rinon(nefrectomia_parcial). tratamiento_cancer_rinon(nefrectomia_radical).
tratamiento_cancer_rinon(ablacion_termica). tratamiento_cancer_rinon(inmunoterapia).
tratamiento_cancer_rinon(terapia_dirigida). tratamiento_cancer_rinon(quimioterapia).
tratamiento_cancer_rinon(radioterapia). tratamiento_cancer_rinon(embolizacion_arterial).

% Tipos
tipo_cancer_rinon(carcinoma_celulas_renales). tipo_cancer_rinon(carcinoma_urotelial).
tipo_cancer_rinon(sarcoma_renal). tipo_cancer_rinon(linfoma_renal).

% --- PAPERAS ---
% Síntomas
sintoma_paperas(inflamacion_glandulas_salivales). sintoma_paperas(dolor_mandibula).
sintoma_paperas(fiebre). sintoma_paperas(dolor_cabeza).
sintoma_paperas(dolor_muscular). sintoma_paperas(fatiga).
sintoma_paperas(perdida_apetito). sintoma_paperas(dolor_masticar).
sintoma_paperas(dolor_tragar). sintoma_paperas(sequedad_boca).

% Complicaciones
complicacion_paperas(meningitis). complicacion_paperas(encefalitis).
complicacion_paperas(orquitis). complicacion_paperas(ooforitis).
complicacion_paperas(pancreatitis). complicacion_paperas(sordera).
complicacion_paperas(mastitis).

% Tratamientos
tratamiento_paperas(reposo). tratamiento_paperas(analgesicos).
tratamiento_paperas(antiinflamatorios). tratamiento_paperas(hidratacion).
tratamiento_paperas(compresas_frias). tratamiento_paperas(dieta_blanda).
tratamiento_paperas(aislamiento).

% Prevención
prevencion_paperas(vacuna_mmr). prevencion_paperas(evitar_contacto_infectados).
prevencion_paperas(lavado_manos_frecuente). prevencion_paperas(no_compartir_utensilios).


% REGLAS PARA RELACIONES DERIVADAS (GENEALOGÍA)
progenitor(X, Y) :- padre(X, Y).
progenitor(X, Y) :- madre(X, Y).
hijo(X, Y) :- progenitor(Y, X), hombre(X).
hija(X, Y) :- progenitor(Y, X), mujer(X).
abuelo(X, Z) :- padre(X, Y), progenitor(Y, Z).
abuela(X, Z) :- madre(X, Y), progenitor(Y, Z).

% Hermano/Hermana (misma madre y/o mismo padre)
hermano(X, Y) :- progenitor(P, X), progenitor(P, Y), X \= Y, hombre(X).
hermana(X, Y) :- progenitor(P, X), progenitor(P, Y), X \= Y, mujer(X).
% Para hermanos completos (mismo padre Y misma madre):
% hermano_completo(X,Y) :- padre(P,X), padre(P,Y), madre(M,X), madre(M,Y), X \= Y, hombre(X).

tio(X, Y) :- hermano(X, Z), progenitor(Z, Y).
tia(X, Y) :- hermana(X, Z), progenitor(Z, Y).
% Tíos políticos (esposos de tíos de sangre) podrían añadirse si es necesario.
% tio(X,Y) :- esposo(X, TiaDeSangre), tia(TiaDeSangre, Y).

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


% PLANTILLAS DE INTERACCIÓN (SALUDOS, DESPEDIDAS)

% Saludos del usuario (entrada) -> Respuesta del bot (salida)
% Formato: template_saludo(ListaPatronEntrada, ListaPlantillaRespuesta, [IndiceNombreEnEntrada]).
% 's(*)' en ListaPatronEntrada es un comodín para una palabra.
% 'nombre_placeholder' en ListaPlantillaRespuesta será reemplazado por el nombre del usuario.

template_saludo([hola, mi, nombre, es, s(*), '.'], ['Hola', nombre_placeholder, '.', '¿En', 'qué', 'puedo', 'ayudarte', '?'], [5]).
template_saludo([buenas, tardes, mi, nombre, es, s(*)], ['Buenas', 'tardes', nombre_placeholder, '.', '¿Cómo', 'estás', '?'], [5]).
template_saludo([buenas, noches, soy, s(*)], ['Buenas', 'noches', nombre_placeholder, '.', 'Un', 'placer', 'conocerte', '.'], [4]).
template_saludo([saludos, me, llamo, s(*), '.'], ['Saludos', nombre_placeholder, '!', 'Dime', 'cómo', 'puedo', 'asistirte', '.'], [4]).
template_saludo([que, tal, soy, s(*)], ['Qué', 'tal', nombre_placeholder, '!', 'Listo', 'para', 'tus', 'consultas', '.'], [4]).
template_saludo([hey, que, onda, mi, nombre, es, s(*)], ['Hey', nombre_placeholder, ',', 'qué', 'onda', '.', '¿Qué', 'necesitas', '?'], [7]).
template_saludo([buenos, dias, soy, s(*), '.'], ['Buenos', 'días', nombre_placeholder, '.', 'Espero', 'que', 'tengas', 'un', 'gran', 'día', '.', '¿Consultas', '?'], [4]).
template_saludo([hola, soy, s(*)], ['Hola', nombre_placeholder, '!', 'Bienvenido/a', '.' ], [3]). % Añadido punto al final
template_saludo([me, presento, soy, s(*)], ['Un', 'gusto', nombre_placeholder, '.', 'Estoy', 'para', 'servirte', '.'], [4]).
template_saludo([hi, i, am, s(*)], ['Hello', nombre_placeholder, ',', 'how', 'can', 'I', 'help', 'you', '?'], [4]).

% Respuesta aleatoria del bot si no entiende la entrada del usuario
random_fallback_response(Response) :-
    Responses = [
        ['No', 'entiendo', 'esa', 'pregunta', '.', 'Puedes', 'escribir', '"ayuda"', 'para', 'ver', 'opciones', '.'],
        ['¿Podrías', 'reformular', 'tu', 'pregunta', 'por', 'favor', '?'], % Corregido aquí
        ['No', 'estoy', 'seguro', 'de', 'haber', 'entendido', '.', 'Intenta', 'con', 'otras', 'palabras', 'o', 'escribe', '"ayuda"','.'],
        ['Mi', 'base', 'de', 'conocimiento', 'es', 'limitada', '.', 'Quizas', '"ayuda"', 'te', 'oriente', '.'] 
    ],
    random_member(Response, Responses).

% Saludos iniciales aleatorios del bot (al empezar el programa)
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

% Patrones de despedida del usuario (lo que el usuario podría escribir)
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

% Despedidas aleatorias del bot (al terminar el programa)
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

% MECANISMO DE ELIZA (CHATBOT)

% Predicado principal para iniciar ELIZA
eliza :-
    mostrar_saludo_inicial_aleatorio,
    write('Soy un programa de salud y genealogia.'), nl,
    write('Puedes preguntarme sobre sintomas, tratamientos, o relaciones familiares.'), nl,
    write('Escribe "ayuda" para ver el menu o "salir" para terminar.'), nl,
    eliza_loop.

% Loop principal de la guacha esta 
eliza_loop :-
    write('> '), flush_output(current_output), % Asegura que el prompt se muestre
    read_line_to_codes(user_input, InputCodes),
    ( InputCodes == end_of_file -> % Ctrl+D
        handle_despedida_aleatoria, nl
    ; InputCodes == [] -> % Enter vacío
        write('Por favor, escribe algo o "salir" para terminar.'), nl,
        eliza_loop
    ;
        atom_codes(InputAtom, InputCodes),
        ( InputAtom == '' -> % Enter vacío (algunas implementaciones de read_line_to_codes)
            write('Por favor, escribe algo o "salir" para terminar.'), nl,
            eliza_loop
        ;
            atomic_list_concat(WordAtoms, ' ', InputAtom),
            maplist(downcase_if_not_s_star, WordAtoms, Words), % Words es lista de átomos en minúscula
            procesar_entrada(Words, Action),
            ( Action == terminar ->
                true % procesar_entrada ya mostró despedida y nl
            ;
                eliza_loop
            )
        )
    ).

% Convertir a minsculas a menos que sea el átomo 's(*)'
downcase_if_not_s_star(Atom, Atom) :- Atom == 's(*)', !.
downcase_if_not_s_star(Atom, Downcased) :- downcase_atom(Atom, Downcased).

% Unificación para patrones de saludo (del código original del usuario)
unify_with_template([], []).
unify_with_template(['s(*)'|TR], [_NameAtom|WR]) :- % _NameAtom es la palabra en la entrada que matchea con s(*)
    unify_with_template(TR, WR).
unify_with_template([H|TR], [H|WR]) :-
    H \== 's(*)',
    unify_with_template(TR, WR).


% 1. Despedidas del usuario
procesar_entrada(Words, terminar) :-
    palabra_despedida_usuario(Pattern),
    sublist(Pattern, Words), !, % Si la entrada CONTIENE un patrón de despedida
    handle_despedida_aleatoria, nl.

% 2. Comando de ayuda
procesar_entrada([ayuda], continuar) :- !,
    mostrar_ayuda.

% 3. Comando para mostrar todo el árbol genealógico
procesar_entrada([mostrar, familia], continuar) :- !,
    write('--- INFORMACIÓN GENEALOGICA COMPLETA ---'), nl,
    mostrar_arbol_genealogico.

% 4. Consultas genealógicas específicas: "X es RELACION de Y"
procesar_entrada(Words, continuar) :-
    append(Persona1_Words, [es|Resto], Words),
    \+ Persona1_Words = [quien], % Para no colisionar con "quien es ..."
    \+ Persona1_Words = [], % Persona1 no puede ser vacía
    append(Relacion_Words, [de|Persona2_Words], Resto),
    \+ Relacion_Words = [], \+ Persona2_Words = [], % No pueden ser vacíos
    atomic_list_concat(Persona1_Words, '_', P1Atom), % Manejar nombres compuestos con '_'
    atomic_list_concat(Relacion_Words, '_', RelacionAtom),
    atomic_list_concat(Persona2_Words, '_', P2Atom),
    downcase_atom(P1Atom, P1Lower),
    downcase_atom(RelacionAtom, RelacionLower),
    downcase_atom(P2Atom, P2Lower),
    verificar_relacion(P1Lower, RelacionLower, P2Lower), !, nl.

% 5. Consultas genealógicas específicas: "quien es RELACION de Y"
procesar_entrada(Words, continuar) :-
    (Words = [quien, es, RelacionAtom | RestoDe]; Words = [quienes, son, los, RelacionAtom | RestoDe ]), 
    % "quien es padre de X" o "quienes son los hijos de Y"
    (RestoDe = [de, PersonaAtom] ; RestoDe = [de, la, PersonaAtom]), 
    % "de X" o "de la X"
    downcase_atom(PersonaAtom, PLower),
    downcase_atom(RelacionAtom, RelacionLower),
    buscar_relacion(RelacionLower, PLower), !, nl.
    
% 6. Diagnóstico básico de síntomas
procesar_entrada(Words, continuar) :-
    ( member(tengo, Words) ; member(siento, Words) ; member(padezco, Words) ),
    findall(S, (sintoma_cancer_rinon(S), member(S, Words)), SintomasCRDetectados),
    findall(S, (sintoma_paperas(S), member(S, Words)), SintomasPDetectados),
    ( (SintomasCRDetectados \= [] ; SintomasPDetectados \= []) ->
        handle_sintomas_detectados(SintomasCRDetectados, SintomasPDetectados), !
    ;   % Si no hay síntomas conocidos pero sí "tengo/siento", cae al fallback
        fail % Para que no entre aquí y vaya al siguiente o al fallback
    ).


% 7. Consultas médicas sobre cáncer de riñón (palabras clave) - SOLO LA LLAMADA
procesar_entrada(Words, continuar) :-
    member(cancer, Words), member(rinon, Words),
    procesar_cancer_rinon(Words), !. 

% 8. Consultas médicas sobre paperas (palabras clave) - SOLO LA LLAMADA
procesar_entrada(Words, continuar) :-
    member(paperas, Words),
    procesar_paperas(Words), !. 

% 9. Saludos del usuario con extracción de nombre
procesar_entrada(Words, continuar) :-
    template_saludo(Pattern, ResponseTemplate, [PosNombreEnInput]),
    unify_with_template(Pattern, Words), % Intenta unificar
    nth1(PosNombreEnInput, Words, NombreAtom), 
    capitalizar_nombre(NombreAtom, NombreCapitalizado),
    replace_first_occurrence(ResponseTemplate, nombre_placeholder, NombreCapitalizado, FinalResponseList),
    atomic_list_concat(FinalResponseList, ' ', ResponseText),
    write(ResponseText), nl, !.

% 10. Fallback: si ninguna regla anterior tuvo éxito
procesar_entrada(_, continuar) :-
    random_fallback_response(ResponseList), % Definición corregida arriba
    atomic_list_concat(ResponseList, ' ', ResponseText),
    write(ResponseText), nl.

% --- Funciones auxiliares para `procesar_entrada` ---

procesar_cancer_rinon(Words) :- member(sintomas, Words), !, mostrar_sintomas_cancer_rinon, nl.
procesar_cancer_rinon(Words) :- member(tratamientos, Words), !, mostrar_tratamientos_cancer_rinon, nl.
procesar_cancer_rinon(Words) :- (member(factores, Words); member(riesgo, Words)), !, mostrar_factores_riesgo_cancer_rinon, nl.
procesar_cancer_rinon(Words) :- member(tipos, Words), !, mostrar_tipos_cancer_rinon, nl.
procesar_cancer_rinon(_) :- mostrar_info_completa_cancer_rinon, nl. % Por defecto, si dice "cancer rinon"

procesar_paperas(Words) :- member(sintomas, Words), !, mostrar_sintomas_paperas, nl.
procesar_paperas(Words) :- member(tratamientos, Words), !, mostrar_tratamientos_paperas, nl.
procesar_paperas(Words) :- member(complicaciones, Words), !, mostrar_complicaciones_paperas, nl.
procesar_paperas(Words) :- member(prevencion, Words), !, mostrar_prevencion_paperas, nl.
procesar_paperas(_) :- mostrar_info_completa_paperas, nl. % Por defecto, si dice "paperas"

random_fallback_response(Response) :-
    Responses = [
        ['No', entiendo, esa, pregunta, '.', 'Puedes', escribir, '"ayuda"', para, ver, opciones, '.'],
        ['Podrias', reformular', tu', pregunta, por', favor, '?'],
        ['No', estoy', seguro', de', haber', entendido', '.', 'Intenta', con', otras', palabras', o', escribe', '"ayuda".'],
        ['Mi', base', de', conocimiento', es', limitada.', 'Quizas', '"ayuda"', te', oriente', '.']
    ],
    random_member(Response, Responses).

% --- Funciones auxiliares para `procesar_entrada` ---

handle_sintomas_detectados(CR, P) :-
    nl,
    ( CR \== [] ->
        length(CR, NumCR),
        format('Detecte ~w sintoma(s) que mencionaste (~w) que podrian estar relacionados con CANCER DE RINON.~n', [NumCR, CR]),
        write('Recuerda que esta es solo información general y NO un diagnostico. Debes consultar a un medico.'), nl,
        write('Si deseas, puedo mostrarte mas detalles sobre sintomas, factores de riesgo o tratamientos.'), nl
    ; true
    ),
    ( P \== [] ->
        length(P, NumP),
        format('Detecte ~w sontoma(s) que mencionaste (~w) que podrian estar relacionados con PAPERAS.~n', [NumP, P]),
        write('Recuerda que esta es solo informacion general y NO un diagnostico. Debes consultar a un medico.'), nl,
        write('Si deseas, puedo mostrarte mas detalles sobre sintomas, complicaciones o tratamientos.'), nl
    ; true
    ),
    nl.

% MOSTRAR INFORMACIÓN (SALUD Y AYUDA)

mostrar_ayuda :-
    nl,
    write('-------------------------------- MENU DE AYUDA --------------------------------'), nl,
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
    write('4. INTERACCIONES:'), nl,
    write('   - Saludame: "hola mi nombre es [tu_nombre]"'), nl,
    write('   - Pide ayuda: "ayuda"'), nl,
    write('   - Termina la conversacion: "salir", "adios", "chao", etc.'), nl,
    write('----------------------------------------------------------------------------------'), nl, nl.

% --- Cáncer de Riñón ---
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

% --- Paperas ---
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

% MOSTRAR Y VERIFICAR INFORMACIÓN GENEALÓGICA

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
    Goal =.. [Relacion, P1, P2], % Construye el objetivo dinámicamente: Relacion(P1,P2)
    ( call(Goal) ->
        format('Si, segun mi informacion, ~w es ~w de ~w.~n', [P1, Relacion, P2])
    ;
        format('No, segun mi informacion, ~w NO es ~w de ~w, o no tengo datos suficientes.~n', [P1, Relacion, P2])
    ).

% Buscar todas las personas que tienen cierta relación con P
buscar_relacion(Relacion, P) :-
    RelacionPermitida = [padre, madre, abuelo, abuela, hermano, hermana, tio, tia, primo, prima, esposo, esposa, hijo, hija, nieto, nieta, progenitor, descendiente, ancestro, hermanos, hijos],
    ( member(Relacion, RelacionPermitida) ->
        ( (Relacion = hermanos ; Relacion = hijos) -> % Casos especiales que pueden necesitar findall combinado
            ( Relacion = hermanos ->
                findall(X, (hermano(X, P) ; hermana(X, P)), Todos), ListName = 'hermanos/as'
            ; Relacion = hijos ->
                findall(X, progenitor(P, X), Todos), ListName = 'hijos/as'
            )
        ;
            Goal =.. [Relacion, X, P], % X es Relacion de P
            findall(X, call(Goal), Todos),
            ListName = Relacion
        ),
        ( Todos = [] ->
            format('No encontre ~ws de ~w en la base de datos.~n', [ListName, P])
        ;
            format('El/La/Los/Las ~ws de ~w son: ~w~n', [ListName, P, Todos])
        )
    ;
        format('Lo siento, no puedo buscar la relacion "~w". Intenta con relaciones conocidas (padre, hijo, etc.).~n', [Relacion])
    ).


% UTILIDADES GENERALES

% Reemplaza la primera ocurrencia de 'Old' por 'New' en 'ListIn'
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

% Verifica si S es sublista de L
sublist(S, L) :- append(_, R, L), append(S, _, R).

% vista saludo inicial aleatorio del bot
mostrar_saludo_inicial_aleatorio :-
    findall(ID, saludo_bot_template(ID, _), IDs),
    ( IDs \= [] ->
        random_member(SelectedID, IDs),
        saludo_bot_template(SelectedID, MsgList),
        atomic_list_concat(MsgList, ' ', MsgText),
        write(MsgText), nl
    ; write('¡Hola! Bienvenido a Eliza.'), nl % Fallback si no hay templates
    ).

% Mostrar despedida aleatoria del bot
handle_despedida_aleatoria :-
    findall(ID, despedida_bot_template(ID, _), IDs),
    ( IDs \= [] ->
        random_member(SelectedID, IDs),
        despedida_bot_template(SelectedID, MsgList),
        atomic_list_concat(MsgList, ' ', MsgText),
        write(MsgText) % nl se maneja en el loop principal o después
    ; write('Adiosin. ¡Vuelve pronto!'), nl % Fallback
    ).

% :- multifile random_member/2.
% :- discontiguous random_member/2.
% random_member(X, List) :- % Definición básica si library(random) no está
%    length(List, Length),
%    Length > 0,
%    Max is Length -1,
%    random(0, Max, Index),
%    nth0(Index, List, X).

% Inicio del programa (ejecutar `?- start.` o `?- eliza.`)
start :- eliza.