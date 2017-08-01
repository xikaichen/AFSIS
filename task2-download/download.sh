#!/bin/bash
source /etc/profile.d/modules.sh
DIR=/vega/afsis/users/xc2358/sentinel/dsen0
module load anaconda/4.1.1-python-2.7.12

for f in config/*.json
do
  python $DIR/main/dsen.py $DIR/$f &
done


