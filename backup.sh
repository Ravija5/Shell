#!/usr/bin/bash
file=$1
echo "$file"

if [ -e "$file" ] 
then
    newFile = "$file"+".txt";
    #create a backup 
    for line in $file
    do
        echo $line > $newFile
    done    

fi
