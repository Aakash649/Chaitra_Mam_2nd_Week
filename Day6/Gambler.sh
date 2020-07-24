#!/bin/bash -x

i=100

while [[ $i -gt 0 && $i -lt 200 ]]
do
	x=$((RANDOM % 2))
		if [ $x -eq 0 ]
		then
			i=`expr $i + 10`
			j=`expr $j + 1`
		else
			i=`expr $i - 10`
		fi

done

echo " value won $i"
echo "Total win count $j"
