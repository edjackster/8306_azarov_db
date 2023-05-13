#!/bin/sh

echo "Start integration"

annotate-output "+%D %H:%M:%S" pytest --disable-warnings -rpP --tb=short -k "not selenium" . 2>&1 | tee -a /proc/1/fd/1 /logs/logs.txt