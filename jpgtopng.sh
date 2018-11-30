#! /bin/bang

for file in *.jpg
do
    newFile=`sed -i "s/jpg/png/g" "$file"`
    echo "$newFile"
done