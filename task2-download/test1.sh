#!/bin/sh

# Directives
#PBS -N World
#PBS -W group_list=yetiafsis
#PBS -l nodes=1:ppn=4,walltime=00:05:30,mem=1000mb
#PBS -M xc2358@columbia.edu
#PBS -m abe
#PBS -V

# Set output and error directories
#PBS -o localhost:/vega/afsis/users/xc2358/
#PBS -e localhost:/vega/afsis/users/xc2358/

# Print "Hello World"
echo "Hello World"
source /etc/profile.d/modules.sh
module load anaconda/4.1.1-python-2.7.12
DIR=/vega/afsis/users/xc2358/sentinel/dsen0
python $DIR/main/dsen.py $DIR/config/tza_sen2_3.json 

# Print date and time
date

# End of script
