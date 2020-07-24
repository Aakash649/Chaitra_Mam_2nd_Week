#!/bin/bash

total=0

for (( counter=1; counter<=5; counter++))
do
diff=$((30-10+1))
r1=$(($(($RANDOM%$diff))+10))
total=$(($total+$r1))
done


echo  $total;
avg=`expr $total / 5`;
echo $avg;
