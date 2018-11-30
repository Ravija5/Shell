#!/bin/bash

num_args=$#

if [ $num_args -eq 1 ]
then
    num=$1
    for i in $(seq 1 $num)
    do
        echo $i
    done
elif [ $num_args -eq 2 ]
then
    for i in $(seq $1 $2)
    do
        echo $i
    done
elif [ $num_args -eq 3 ]
then
    echo "Third part"
    first=$1
    increment=$2
    last=$3
    result=0

    echo $first
    i=1
    while [ $result -le $last ]
    do
        result=$(( $first + $i * $increment ))
        echo $result
        i=$(($i+1))
    done
fi 