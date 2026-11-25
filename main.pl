/*  Othello en Prolog — point d'entrée

    Charge l'ensemble des modules du projet (via load.pl).
    Exécuté en script (swipl main.pl), affiche « setup OK ».
*/

:- initialization(main, main).

:- ensure_loaded(load).

main :-
    format("setup OK~n").
