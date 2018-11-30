#! /bin/bash

if test $# -ne 2
then
    echo "Usage: ./echon.sh $1 $2"
    exit 1
    
elif echo $1 | egrep -qv "^[0-9]+$"
then
    echo "./echon.sh: argument 1 must be a non-negative integer"
    exit 1
elif test $# -eq 2
then
    i=1
    while test $i -le $1 
    do
        echo $2
        i=`expr $i + 1`
    done
fi