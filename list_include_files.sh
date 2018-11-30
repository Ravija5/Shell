#!/bin/bash

for file in *.c
do
    cat $file | egrep "#include" | sed 's/^#.*<//' | sed 's/>.*//'

done

# #include<stdio.h>
# #include<stdlib.h>elkjewfng
# hbfdsg 
# mfeahbgwni