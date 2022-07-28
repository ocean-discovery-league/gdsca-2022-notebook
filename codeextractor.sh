#!/bin/sh

mkdir -p code
for f in *.ipynb; do
    echo $f
    jupytext --to py --output code/$f.py $f
done

exit 0
