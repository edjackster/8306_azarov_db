#!/bin/sh

echo "Start pylint"

annotate-output "+%D %H:%M:%S" pytest --disable-warnings -rpP --tb=short -k "not selenium and not integration" --pylint --pylint-rcfile=./tests/pylintrc . 2>&1 | tee -a /proc/1/fd/1 /logs/logs.txt