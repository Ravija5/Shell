#!/bin/bash 
file=$1
cat "$file" | while read line; do 
    echo Appended >> $file
done 

