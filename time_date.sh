#!/bin/bash

#Write a shell script time_date.sh that prints the time and date once an hour. 
#It should do this until a new month is reached.

now=$(date)
time=$(echo $now| cut -d' ' -f4)
date=$(echo $now| cut -d' ' -f2,3 )
start_month=$(echo $now| cut -d' ' -f3)

while [ $start_month=$(echo $date| cut -d' ' -f3) ]
do
    echo $date $time
    sleep 3600
done