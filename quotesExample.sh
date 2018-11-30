#! bin/bash

#single quotes turns off ALL transformations
echo '$heyehey!!****./'

#double quotes turns off every transformation EXCEPT $ and back-quotes
x=12
y=abc
echo "hello im x = $x and `x.sh` " 
echo "$SHELL"
echo "/etc/*.conf"
echo "Today is $(date)"
echo 'x=$x, y=$y'
#backquotes (AKA command substituiton)- no grouping, captures command results
for f in *.sh
do
    line=`echo $f| egrep [P]lag` 
    echo $line
done

#using backslash to escape special meaning
echo "Path is \$PATH"
echo "Path is $PATH"