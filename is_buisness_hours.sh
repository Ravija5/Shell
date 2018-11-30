#!/bin/bash

# exits with a status of 0  if the current time is between 9am & 5pm
# otherwise exit with a status 1
#
# date format looks like this Sun Mar 18 12:57:08 EST 2012

curr_time=$(echo "Sun Mar 18 18:57:08 EST 2012" | cut -f4 -d' ')
hour=$(echo $curr_time| cut -d':' -f1)

if [ $hour -ge 9 ] && [ $hour -le 17 ]
then
    exit 0
else
    exit 1
fi

