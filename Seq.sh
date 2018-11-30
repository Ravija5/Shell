#!/bin/sh

#tute 2
#q is quiet mode

for i in *.html 
do
    if egrep -qi "<\s*blink\s*>" $file 
    then 
        echo "Destroying $file"
    fi
done



    

#! /bin/bash

if test -