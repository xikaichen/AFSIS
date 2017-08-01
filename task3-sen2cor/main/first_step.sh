#!/bin/bash

export CONFIG=$1
if [[ -z $CONFIG ]];then
  echo "Using Default Config File"
  export CONFIG=`dirname $0`'/../config/config.sh'
fi
source $CONFIG
source /home/xchen/sen2cor/L2A_Bashrc

newtask(){
  $GPT $GRAPH_FOLDER/$GRAPH -Pfile=$1  
}
export FILELIST=""
for f in `dir $DIR/$INFOLDER/S2A_OPER_PRD_*/S2A_OPER_*.xml` 
do
        export FILELIST=${FILELIST}","$f
done
export FILELIST=`echo $FILELIST | cut -c 2-`
export FILELIST=${FILELIST//,/ }
echo $FILELIST

echo "begin to execute first step"
for element in $FILELIST   
do  echo $element
    newtask $element  
done 

echo "Batch files The end"
