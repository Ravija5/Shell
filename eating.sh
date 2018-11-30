#!/bin/bash

file=$1

cat $file | egrep "{" | cut -d',' -f1 | sed 's/ *{"name": "//' | sed 's/"$//'| sort| uniq