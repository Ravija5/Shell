#!/bin/bash

dir1="$1"
dir2="$2"

if [ "$(ls -A $dir1)" ] && [ "$(ls -A $dir2)" ]
then
    for file1 in "$dir1"/*
    do
        for file2 in "$dir2"/*
        do
            if [ "$(basename "$file1")"  = "$(basename "$file2")" ]
            then
                diff "$file1" "$file2" >/dev/null
                exit_stat=$? 
                if [ $exit_stat -eq 0 ]
                then
                    file_name="$(basename "$file1")"
                    echo "$file_name"
                fi
            fi
        done
    done
fi

