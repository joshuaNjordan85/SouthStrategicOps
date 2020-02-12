##!/usr/bin/env bash
mkdir $(pwd)/outputs && \
for f in *.dot; do dot -Tpng $(pwd)/$f -o $(pwd)/outputs/$f.png; done
