#!/bin/sh

annotate-output "+%D %H:%M:%S" pep8 /devops-examples/EXAMPLE_APP/. 2>&1 | tee /proc/1/fd/1 /logs/logs.txt

annotate-output "+%D %H:%M:%S" pytest --disable-warnings -rpP --tb=short -k "not selenium and not integration" --pylint --pylint-rcfile=./tests/pylintrc . 2>&1 | tee -a /proc/1/fd/1 /logs/logs.txt

annotate-output "+%D %H:%M:%S" pytest --disable-warnings -rpP --tb=short -k "not selenium" . 2>&1 | tee -a /proc/1/fd/1 /logs/logs.txt