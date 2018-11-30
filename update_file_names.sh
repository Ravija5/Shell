#!/bin/bash

for file in "$@"
do
    if [ -d $file ]
    then
        for sub_file in "$file/*"
        do
            base="$(basename "$sub_file")"
            echo $base
            temporary_file="$sub_file.tmp.$$"
            sed 's/COMP2041/COMP2042/g;s/COMP9041/COMP9042/g' $sub_file >$temporary_file &&
            mv $temporary_file $sub_file
        done
    else
        temporary_file="$file.tmp.$$"
        sed 's/COMP2041/COMP2042/g;s/COMP9041/COMP9042/g' $file >$temporary_file &&
        mv $temporary_file $file
    fi
    
done