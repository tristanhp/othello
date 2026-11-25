/*  Chargement du projet

    Déclare l'alias project(...) sur la racine du dépôt et charge tous
    les modules. Utilisé par main.pl et par les tests.
*/

:- prolog_load_context(directory, Dir),
   asserta(user:file_search_path(project, Dir)).

:- use_module(project(src/board)).
:- use_module(project(src/rules)).
:- use_module(project(src/game)).
:- use_module(project(src/heuristics)).
:- use_module(project(src/tournament)).
:- use_module(project(src/gui)).
:- use_module(project(src/ai/random)).
:- use_module(project(src/ai/minimax)).
:- use_module(project(src/ai/alphabeta)).
