#!/bin/bash

for file in "$@"
do
    #echo $file| cat $file | cut -d':' -f2| tr '\s*,' '\n'| egrep "_Student"| egrep "[A-Z]{4}"| cut -d'_' -f1| sed 's/^ //'

  echo $file| cat $file | tr , "\n" | sed -nE 's/^.*([A-Z]{4}[0-9]{4})_Student.*/\1/p'
done