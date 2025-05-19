% ——— 15 templates de HOLA
patron([hola],               ["¡Hola! ¿Cómo estás?"]).
patron([holi],               ["¡Holi! ¿Qué tal?"]).
patron([holaa],              ["¡Holaaa! Me alegra verte."]).
patron([holita],             ["¡Holita! ¿En qué puedo ayudarte?"]).
patron([holis],              ["¡Holis! ¿Qué hay de nuevo?"]).
patron([hola,amigo],         ["¡Hey amigo! ¿Cómo va todo?"]).
patron([hola,tesoro],        ["¡Hola, tesoro! ¿Qué deseas hoy?"]).
patron([hola,qué,onda],      ["¿Qué onda? Aquí estoy para escucharte."]).
patron([hola,qué,tal],       ["¿Qué tal? Cuéntame más."]).
patron([hey],                ["¡Hey! ¿Cómo te sientes?"]).
patron([hi],                 ["Hi there! ¿Cómo puedo ayudarte?"]).
patron([ey],                 ["¿Ey? ¿Me escuchas?"]).
patron([alo],                ["¡Aló! Dime, ¿qué pasa?"]).
patron([ola],                ["¡Ola! ¿Qué ocurre?"]).
patron([hola,de,nuevo],      ["¡Hola de nuevo! ¿Sigues ahí?"]).

% ——— 15 templates de ADIÓS 
patron([adios],              ["¡Adiós! Cuídate mucho."]).
patron([chao],               ["¡Chao! Nos vemos pronto."]).
patron([chau],               ["¡Chau! Hasta la próxima."]).
patron([bye],                ["Bye! Que tengas un buen día."]).
patron([hasta,luego],        ["Hasta luego, vuelve cuando quieras."]).
patron([nos,vemos],          ["Nos vemos, ¡cuídate!"]).
patron([hasta,pronto],       ["¡Hasta pronto!"]).
patron([hasta,mañana],       ["Hasta mañana, descansa bien."]).
patron([me,despido],         ["Me despido, ¡fue un gusto!"]).
patron([cuídate],            ["¡Cuídate! Aquí estaré si regresas."]).
patron([cuidate],            ["Cuídate mucho. ¡Nos leemos!"]).
patron([nos,hablamos],       ["Nos hablamos luego."]).
patron([hasta,la,próxima],   ["Hasta la próxima."]).
patron([hasta,la,vista],     ["Hasta la vista, ¡amigo!"]).
patron([adiós],              ["¡Adiós! Fue un placer hablar contigo."]).

% ——— 15 templates de SALUDO
patron([buenos,dias],             ["¡Buenos días! ¿Cómo amaneces?"]).
patron([buenas,tardes],           ["¡Buenas tardes! ¿Cómo va tu día?"]).
patron([buenas,noches],           ["¡Buenas noches! Descansa bien."]).
patron([saludos],                 ["¡Saludos cordiales! ¿En qué puedo ayudar?"]).
patron([muy,buenos,dias],         ["¡Muy buenos días!"]).
patron([muy,buenas,tardes],       ["¡Muy buenas tardes!"]).
patron([muy,buenas,noches],       ["¡Muy buenas noches!"]).
patron([feliz,dia],               ["¡Feliz día! Que sea provechoso."]).
patron([feliz,jornada],           ["¡Feliz jornada!"]).
patron([feliz,tarde],             ["¡Feliz tarde!"]).
patron([feliz,noche],             ["¡Feliz noche!"]).
patron([buen,dia],                ["¡Buen día!"]).
patron([hola,buenos,dias],        ["¡Hola y buenos días!"]).
patron([hola,buenas,tardes],      ["¡Hola y buenas tardes!"]).
patron([saludos,cordiales],       ["¡Saludos cordiales!"]).
patron(_, ["Cuéntame más…"]).



% monarios
hola_template([hola]).
hola_template([holi]).
hola_template([holaa]).
hola_template([holita]).
hola_template([holis]).
hola_template([hola,amigo]).
hola_template([hola,tesoro]).
hola_template([hola,qué,onda]).
hola_template([hola,qué,tal]).
hola_template([hey]).
hola_template([hi]).
hola_template([ey]).
hola_template([alo]).
hola_template([ola]).
hola_template([hola,de,nuevo]).
adios_template([adios]).
adios_template([chao]).
adios_template([chau]).
adios_template([bye]).
adios_template([hasta,luego]).
adios_template([nos,vemos]).
adios_template([hasta,pronto]).
adios_template([hasta,mañana]).
adios_template([me,despido]).
adios_template([cuídate]).
adios_template([cuidate]).
adios_template([nos,hablamos]).
adios_template([hasta,la,próxima]).
adios_template([hasta,la,vista]).
adios_template([adiós]).
saludo_template([buenos,dias]).
saludo_template([buenas,tardes]).
saludo_template([buenas,noches]).
saludo_template([saludos]).
saludo_template([muy,buenos,dias]).
saludo_template([muy,buenas,tardes]).
saludo_template([muy,buenas,noches]).
saludo_template([feliz,dia]).
saludo_template([feliz,jornada]).
saludo_template([feliz,tarde]).
saludo_template([feliz,noche]).
saludo_template([buen,dia]).
saludo_template([hola,buenos,dias]).
saludo_template([hola,buenas,tardes]).
saludo_template([saludos,cordiales]).

es_hola(X)   :- hola_template(X).
es_adios(X)  :- adios_template(X).
es_saludo(X) :- saludo_template(X).

responde_elf(OutputList, ResponseList) :-
    patron(OutputList, ResponseList).

