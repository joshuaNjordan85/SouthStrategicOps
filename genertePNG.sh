##!/usr/bin/env bash
dot -Tpng $(pwd)/$1.dot -o $(pwd)/outputs/$1.png && \
echo "![$1](outputs/$1.png)" >> README.md
