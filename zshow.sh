#!/bin/bash

for file in "$@"
do
    temp_name=$file
    new_name=$(echo $temp_name | sed 's/.gz//')
    echo ======$new_name=====
    
    zcat $file
done