SWIPL ?= swipl

.PHONY: run test

run:
	$(SWIPL) main.pl

test:
	$(SWIPL) tests/run_tests.pl
