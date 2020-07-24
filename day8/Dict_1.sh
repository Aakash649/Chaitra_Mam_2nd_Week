#!/bin/bash

declare -A sound


for(( i=1; i<=3; i++))
do
read -p "Enter the Key name: " key
read -p "Enter the value name: " value

sound[$key]="$value"
echo $key"="${sound[$key]}

done
