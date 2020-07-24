#!/bin/bash 

for (( i=0; i<=5; i++ ))
do
fruits[$i]=$i;
done

echo ${fruits[@]}
