#Write a shell script named isprime which given an integer as argment, tests whether it is prime and prints a suitable message
#!/bin/bash

number=$1
flag=1
#echo Number = $number
for ((i=2;i<$number;i++))
do
    result=$(($number % $i))
    #echo Result is = $result 
    if [ $result -eq 0 ]
    then
        flag=0
    fi
done

if [ $flag -eq 0 ]
then   
    echo $number is not prime
    exit 1
else
    echo $number is prime
fi