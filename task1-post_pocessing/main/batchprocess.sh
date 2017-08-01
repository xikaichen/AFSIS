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
  $GPT $GRAPH_FOLDER/$MOSAIC -PfileList=$1 -Ptarget=$outname
}
export FILELIST=""
for f in `dir $DIR/$OUTFOLDER/$CALIB_FOLDER/*.dim*` 
do
	export FILELIST=${FILELIST}","$f
done

export FILELIST=`echo $FILELIST | cut -c 2-`

mkdir -p $DIR/$OUTFOLDER
mkdir -p $DIR/$OUTFOLDER/$MOSAIC_FOLDER

newtask $FILELIST $DIR/$OUTFOLDER/$MOSAIC_FOLDER

chmod -R 777 $DIR/$OUTFOLDER/$MOSAIC_FOLDER

echo "Batch files The end"

