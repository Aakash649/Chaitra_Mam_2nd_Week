#!/bin/bash -x

read -p "Enter the value for harmonic: " n

s=`expr 0 / 10`
for (( i=1; i<=$n; i++))
do
        s=`expr $(($s + 1)) / $i | bc`
done


echo $s;

