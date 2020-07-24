#!/bin/bash -x

read -p"Enter the number: " n;
flag=0
for(( i=2; i<=$(($num-1)); i++ ))
do
if [ $(($num % $1)) -eq 0 ]
then
flag=1
break
fi
done

if [ $flag -eq 1 ]
then
echo "Not a $num prime no"
else
echo "$num is Prime number"
fi
