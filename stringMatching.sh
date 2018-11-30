#! /bin/bash 

for x in *.sh
    do
        echo $x >> mytextfile.txt
    done


cat -n < mytextfile.txt