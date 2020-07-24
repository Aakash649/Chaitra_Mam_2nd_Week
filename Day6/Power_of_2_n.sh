#!/bin/bash

function highestPowerof2()
{
    $res = 0;
    for (( $i = $n; $i >= 1; $i--))
    do

        if [ $(($i & $(($i - 1)))) -eq 0 ]
        then
            $res = $i;
	fi
    done
	echo $res
}

read -p "Enter the value of n for 2^n:" n;

highestPowerof2
