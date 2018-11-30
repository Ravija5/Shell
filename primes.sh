#!/bin/sh
# print the prime numbers less than the specified argument

#Putting a limit on numbers
case $# in
1) ;;
*) echo "Usage: $0 <number>"; exit 1
esac

limit=$1

p=2
while [ $p -lt $limit ]
do
    if isPrime.sh $p >/dev/null
    then
        echo $p
    fi
    p=`expr $p + 1`
done
exit 0