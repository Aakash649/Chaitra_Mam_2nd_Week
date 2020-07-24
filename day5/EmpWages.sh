#!/bin/bash -x
fullTime=1
partTime=2
workday=5
empRateperHr=30
for (( day=1; day<=$workday; day++))
do
randomCheck=$((RANDOM%3))

case $randomCheck in
$fulltime)
empHrs=8
;;
$partTime)
empHrs=4
::
*)
empHrs=0
;;
esac
Salary=$(( $empHrs * $empRateperHr))
Sal_Array[$day]=$Salary
done

echo ${Sal_Array[@]}
