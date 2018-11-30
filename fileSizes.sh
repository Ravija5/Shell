#! /bin/bash

echo "Small files:"| tr '\n' ' '
for file in *
do
    count=`cat $file | wc -l`

    if test "$count" -ge "0" && test "$count" -lt "10" 
    then
        echo "$file" | tr '\n' ' '
    fi
done

echo 

echo "Medium files:"| tr '\n' ' '
for file1 in *
do
    count=`cat $file1 | wc -l`
    
    if test "$count" -ge "10" && test "$count" -lt "100" 
    then
        echo "$file1" | tr '\n' ' '
    fi
done

echo 

echo "Large files:"| tr '\n' ' '
for file2 in *
do
    count=`cat $file2 | wc -l`
    
    if test "$count" -ge "100" 
    then
        echo "$file2" | tr '\n' ' '
    fi
done