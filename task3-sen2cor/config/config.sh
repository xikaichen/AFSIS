export PATH=$PATH":/opt/snap/bin/"
export GPT="gpt"
# parallel by xargs for loop
# max p allowed by server before crush
export MAXP=10
export NP=$MAXP
# flag for debugging and testing
export TESTFLAG=0

export DIR="/data1"
export INFOLDER="sentinel2/raws/tanzania/2016s1"
echo "RUN in " $DIR
echo "RUN in " $DIR

# user-defined grap h location
export GRAPH_FOLDER="/home/xchen/psen1/graph"
export GRAPH="test.xml"
