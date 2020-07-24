#!/bin/bash

isPartTime=1;
isFulltime=2;

empRatePerHr=20;
Randomcheck=$(( RANDOM % 3 ))

function myFunc(){
 salary=$(( $empHrs*$empRatePerHr ))
echo $salary;
}

for (( counter=1; counter<=5; counter++ ))
do

case $Randomcheck in
$isFulltime) 
empHrs=8
;;
$isParttime)
empHrs=8
;;
*) echo "Not Processed"
empHrs=0
;;
esac

done
myFunc
