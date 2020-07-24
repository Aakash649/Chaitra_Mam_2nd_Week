#!/bin/bash -x
for (( j=1; j<=5; j++))
do
integers[k]=$((RANDOM%10));
((k++))
done 

biggest=${integers[0]}
smallest=${integers[0]}

for i in ${integers[@]}
do
     if [[ $i -gt $biggest ]]
     then
        biggest="$i"
     fi

     if [[ $i -lt $smallest ]]
     then
        smallest="$i"
     fi
done

echo "The largest number is $biggest"
echo "The smallest number is $smallest"
