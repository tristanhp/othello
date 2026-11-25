/*  Point d'entrée des tests

    Charge le projet puis tous les fichiers tests/test_*.pl et lance
    les tests plunit. Code de sortie 0 si tout passe, 1 sinon.
*/

:- initialization(main, main).

:- ensure_loaded('../load').

:- prolog_load_context(directory, Dir),
   asserta(user:file_search_path(tests, Dir)).

main :-
    absolute_file_name(tests('.'), Dir, [file_type(directory)]),
    directory_file_path(Dir, 'test_*.pl', Pattern),
    expand_file_name(Pattern, Files),
    maplist(load_files, Files),
    (   run_tests
    ->  halt(0)
    ;   halt(1)
    ).
