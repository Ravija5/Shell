#!/bin/bash

#files having same name and content to be printed

dir1=$1
dir2=$2

#Go through files in dir 1 and check if that name exists in dir 2
#If yes, go through file contents and use diff 

for file1 in "$dir1"/*
do
    for file2 in "$dir2"/*
    do
        if [ $(basename $file1) == $(basename $file2) ]
        then
            if diff $file1 $file2 > /dev/null
            then
                $(basename $file1)
            fi
        fi
    done
done