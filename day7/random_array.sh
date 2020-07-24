#!/bin/bash -x

for (( i=1; i<=10; i++ ))
do
	x=$((RANDOM % 500))
	array[$i]=$x
done

echo ${array[@]}

lar=0
sec_lar=0
small=600
sec_Small=600

a_len=${#array[@]}

for (( i=0; i<$a_len; i++ ))
do
	if [ ${array[$i]} -gt $lar ]
	then
		sec_lar=$lar
		lar=${array[$i]}
	elif [ ${array[$i]} -gt sec_lar ]
	then
	sec_lar=${array[$i]}
	fi
done

for(( i=0; i<$a_len; i++ ))
do
	if [ ${array[$i]} -lt $small ]
	then
		sec_Small=$small
		small=${array[$i]}
	elif [ ${array[$i]} -lt $sec_Small ]
	then
		sec_Small=${array[$i]}
	fi
done

echo "Second largest value is: " $sec_lar;
echo "Second smallest value is: " $sec_Small;
