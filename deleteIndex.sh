#!/bin/bash
# $1 takes the file which we provide while executing
filename=$1
#initial value to count the lines
n=1
#while loop where index is the variable we use for looping
while read index;
do
#reading each line from filename
echo "In line No. $n : Deleting status of $index"
n=$((n+1))
#provide the pattern we want to exclude the indices from deletion
        if [[ $line == *<pattern we want to exclude>* ]]; 
        then
                echo " CAREFUL!!!! $index is sensitive index."
        else
            #command we want need to execute
            curl -XDELETE "<<http://master node:--port number-->>/$index"
        fi
done < $filename
