#!/bin/sh

echo "Start pep8"

annotate-output "+%D %H:%M:%S" pep8 /devops-examples/EXAMPLE_APP/. 2>&1 | tee /proc/1/fd/1 /logs/logs.txt