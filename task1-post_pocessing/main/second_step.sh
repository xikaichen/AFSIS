#!/bin/bash

export CONFIG=$1
if [[ -z $CONFIG ]];then
  echo "Using Default Config File"
  export CONFIG=`dirname $0`'/../config/config.sh'
fi
source $CONFIG
export base=10

newtask(){
  outname=$2/$RANDOM'.dim'
  #$GPT $GRAPH_FOLDER/$GRAPH_TWO -PfileList=$1 -Ptarget=$outname
  $GPT $GRAPH_FOLDER/$GRAPH_TWO -PoutputFile=$OUTFOLDER 
}
#export FILELIST=""
#for f in `dir $DIR/$OUTFOLDER/*.dim` 
#do
#        export FILELIST=${FILELIST}","$f
#done

#export FILELIST=`echo $FILELIST | cut -c 2-`

#mkdir -p $DIR/$OUTFOLDER

echo "begin to execute second step"

#newtask $FILELIST $DIR/$OUTFOLDER
newtask
#chmod -R 777 $DIR/$OUTFOLDER

