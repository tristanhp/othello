/*  Tests de l'outillage

    Test plunit minimal : vérifie que tous les modules du projet se
    chargent. À remplacer/compléter par les vrais tests au fil du projet.
*/

:- module(test_setup, []).

:- use_module(library(plunit)).

:- begin_tests(setup).

test(modules_charges) :-
    forall(member(M, [board, rules, game, heuristics, tournament, gui,
                      ai_random, ai_minimax, ai_alphabeta]),
           current_module(M)).

test(arithmetique) :-
    X is 2 + 2,
    X =:= 4.

:- end_tests(setup).
