#!/bin/bash

VIRTUALIZE_ACTIVATE_VIA_SCRIPT=1 source ./activate

REGIONS="Africa Asia Europe Oceania Americas Global Economies SIDS"

mkdir -p figures/notebooks

for f in $REGIONS; do
    filename=figures/notebooks/$f
    echo "rendering $f"
    GDSCA_SINGLE_REGION="$f" jupyter nbconvert --to notebook --execute --ExecutePreprocessor.timeout=600 --output $filename ./GDSCA-2022.ipynb
done

#echo "rendering all_regions"
#GDSCA_SINGLE_REGION="" GDSCA_OUTPUT_IMAGES="" jupyter nbconvert --to notebook --execute --ExecutePreprocessor.timeout=600 --output figures/notebooks/all_regions ./GDSCA-2022.ipynb

echo ""
echo "done"

exit 0
