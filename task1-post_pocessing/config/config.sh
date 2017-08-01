export PATH=$PATH":/opt/snap/bin/"
export GPT="gpt"
# parallel by xargs for loop
# max p allowed by server before crush
export MAXP=10
export NP=$MAXP
# flag for debugging and testing
export TESTFLAG=0

export DIR="/data2/sentinel1"
export INFOLDER="analysis/ghana"
export OUTFOLDER="/data4/sentinel1/analysis/ghana/outputs"
echo "RUN in " $DIR
echo "RUN in " $DIR

# user-defined graph location
export GRAPH_FOLDER="/home/xchen/psen/graph"
export GRAPH_ONE="post_processing_SNAP_1-2.xml"
export GRAPH_TWO="post_processing_SNAP_2.xml"
