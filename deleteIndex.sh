#!/bin/bash
filename=$1
n=1
while read index;
do
#reading each line from filename
echo "In line No. $n : Deleting status of $index"
n=$((n+1))
        if [[ $line == *kibana* ]];
        then
                echo " CAREFUL!!!! $line is kibana index."
        else
                curl -XDELETE "<<http://master node:--port number-->>/$index"
        fi
done < $filename
