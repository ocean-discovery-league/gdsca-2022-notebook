#!/bin/bash

VIRTUALIZE_ACTIVATE_VIA_SCRIPT=1 source ./activate

REGIONS="Africa Asia Europe Oceania Americas Global Economies SIDS"

mkdir -p gdsca-2022-figures/notebooks

for f in $REGIONS; do
    filename=gdsca-2022-figures/notebooks/$f
    echo "rendering $f"
    GDSCA_SINGLE_REGION="$f" jupyter nbconvert --to notebook --execute --ExecutePreprocessor.timeout=600 --output $filename ./GDSCA-2022.ipynb
done

echo ""
echo "done"

exit 0
