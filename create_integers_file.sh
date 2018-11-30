#! /bin/bash


first_range=$1
second_range=$2
file=$3

while test $second_range -ge $first_range
do
    echo "$first_range">>"$file"
    first_range=`expr $first_range + 1`
done