#!/bin/bash
#Write a shell script that displays the name and size of all files in the
#current directory that are bigger than (say) 100,000 bytes.


for file in *
do  

    bytes=$(wc -c < $file)
    #echo $bytes
    if [ $bytes -ge 100000 ]
    then
        echo "$file" "$bytes"
    fi
done

