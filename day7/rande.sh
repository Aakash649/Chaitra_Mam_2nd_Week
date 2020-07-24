#!/bin/bash -x

arr=(23 43 45 36 76 46)

small=1000

second_small=1000


if [ ${arr[i]} -lt $small]
then 
 small=${arr[i]}
 second_small=$small
elif [ ${arr[i]} -lt $second_small ] && [ arr[i] -ne $small ] 
then
 second_small=${arr[i]}
fi


echo ${arr[@]}
echo $second_small
echo $small
