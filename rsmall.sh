#!/bin/bash
#rmall - delte all files in a directory.

dir=$1
if [ !-d $dir ]
    then
        echo Nodir
        exit 1
fi
# for file in "$dir/*"
# do  
#     #Check if directory exists
#     #If not, exit
#     #Ask user for Delete $dir?
#     #If yes, go through all files
#     #If plain file, then delete
#     #If directory, ask user delete
#     #if yes, delete

    
# done

