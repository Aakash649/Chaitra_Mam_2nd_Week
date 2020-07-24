#!/bin/bash -x

for (( i=0; i<=100; i++ ))
do 
	if [ $(($i % 11)) -eq 0 ]
	then
		echo $i
		array[i]=$i
	fi

done

echo ${array[@]}
