#!/bin/bash -x


for (( i=1; i<=10; i++ ))
do
        x=$((RANDOM % 500))
        a[$i]=$x
done
al=${#a[@]}

for (( i=1; i<=$al; i++ ))
do
	for (( j=$(($i+1)); j<=$al; j++ ))
	do
		if [ ${a[$i]} -gt ${a[$j]} ]
		then
			temp=${a[$i]}
			a[$i]=${a[$j]}
			a[$j]=$temp
		fi
	done
done


echo ${a[@]}


lar=0
sec_lar=0
small=600
sec_Small=600

a_len=${#a[@]}

for (( i=1; i<=$a_len; i++ ))
do
        if [ ${a[$i]} -gt $lar ]
        then
                sec_lar=$lar
                lar=${a[$i]}
        elif [ ${a[$i]} -gt sec_lar ]
        then
        sec_lar=${a[$i]}
        fi
done

for(( i=1; i<=$a_len; i++ ))
do
        if [ ${a[$i]} -lt $small ]
        then
                sec_Small=$small
                small=${a[$i]}
        elif [ ${a[$i]} -lt $sec_Small ]
        then
                sec_Small=${a[$i]}
        fi
done

echo "Second largest value is: " $sec_lar;
echo "Second smallest value is: " $sec_Small;
