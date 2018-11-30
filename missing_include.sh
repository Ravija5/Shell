#!/bin/bash
#We need check a large number of C programs for missing include files.

#get the #Include file "" 
#Go through the directory 
#Check if the file exists
#If not print 

for file in "$@"

do
    result=$(cat $file | egrep '#include "' | sed 's/#include //' | tr '"', ' ')
    #cat $file | sed -n 's/".*"/!p/'
    for f in $result
    do
        #echo "checking if $f exists"
        flag=1
        for dir_file in *
        do
            #echo "comparing $dir_file and $f"
            if [ $(basename $dir_file) == $f ]
            then
                flag=0
                break
            fi
        done
        if [ $flag -eq 1 ]
        then
            echo "$f does not exist"
        fi
        
    done
done