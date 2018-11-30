#!/bin/bash
#rmall - delte all files in a directory.

delete_files(){
    #Shell function
    #Arguments are what will be given to it when called. 
    dir_name=$1
    echo "From function dir name = $dir_name"
    for myFile in "$dir_name"/*
    do
        echo "From function my File = $myFile"
        if [ -f $myFile ]
        then
            echo "Deleting $myFile"
            rm $myFile
        fi
    done
    return
}


dir=$1
#Check if directory exists
if [ ! -d $dir ]
    then
        echo "Directory does not exist"
        exit 1
    elif [ -z "$(ls -A $dir)" ]
    then
        echo "Directory is empty"
        exit 1

fi

echo "Delete $dir?(Y/N)"
read answer

    case $answer in 
    N) ;;

    Y) delete_files $dir
        #Check for subdirectories
        for file in "$dir"/*
        do 
            if [ -d $file ]
            then    
                #If directory, rerun program
                sh rmall.sh $file
            fi
        done

    esac


echo "Done"



