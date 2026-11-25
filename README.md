# Othello en Prolog

Projet ALIA (4IF, INSA Lyon) : un jeu d'Othello en SWI-Prolog et plusieurs
IA (aléatoire, minimax, alpha-bêta) avec différentes heuristiques, comparées
entre elles par des tournois.

## Prérequis

- SWI-Prolog ≥ 9 (développé avec la 11.0.0)
- `make`

## Lancer et tester

```bash
make run    # lance main.pl
make test   # lance les tests plunit (tests/test_*.pl)
```

## Architecture prévue

```
main.pl              point d'entrée (make run)
load.pl              charge tous les modules (utilisé par main et les tests)
src/
  board.pl           représentation du plateau 8x8, accès aux cases, affichage
  rules.pl           coups légaux, retournements, passe, fin de partie
  game.pl            boucle de jeu, alternance des joueurs
  heuristics.pl      fonctions d'évaluation (matériel, mobilité, coins…)
  tournament.pl      parties IA contre IA et statistiques
  gui.pl             affichage et saisie pour le joueur humain
  ai/
    random.pl        IA aléatoire (référence)
    minimax.pl       minimax à profondeur limitée
    alphabeta.pl     minimax avec élagage alpha-bêta
tests/
  run_tests.pl       lanceur des tests (make test)
  test_*.pl          tests plunit
```

Chaque fichier de `src/` est un module. Les modules d'IA s'appellent
`ai_random`, `ai_minimax` et `ai_alphabeta` (pour ne pas entrer en conflit
avec `library(random)`).
