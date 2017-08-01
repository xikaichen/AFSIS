#!/bin/bash

export CONFIG=$1
if [[ -z $CONFIG ]];then
  echo "Using Default Config File"
  export CONFIG=`dirname $0`'/../config/config.sh'
fi
source $CONFIG
export base=10

newtask(){
 # outname=$2/$RANDOM'.dim'
 # $GPT $GRAPH_FOLDER/$GRAPH_ONE -PfileList=$1 -Ptarget=$outname
  $GPT $GRAPH_FOLDER/$GRAPH_ONE -PfileList=$1 -PoutputFile=$OUTFOLDER 
}
export FILELIST=""
for f in `dir $DIR/$INFOLDER/*/mosaic.tmp/*.dim` 
do
        export FILELIST=${FILELIST}","$f
done

export FILELIST=`echo $FILELIST | cut -c 2-`
echo $FILELIST
mkdir -p $OUTFOLDER
echo "begin to execute first step"
newtask $FILELIST
chmod -R 777 $OUTFOLDER

echo "Batch files The end"
