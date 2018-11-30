#!/bin/bash

file=$1

cat $file | sort | uniq -c | sed 's/^ *//' | egrep "^[2-9]+"| cut -d' ' -f2