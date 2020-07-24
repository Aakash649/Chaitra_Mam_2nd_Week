#!/bin/bash 
DIFF=$((6-1+1))
R1=$(($(($RANDOM%$DIFF))+1))
R2=$(($(($RANDOM%$DIFF))+1))

Sum=`expr $R1 + $R2`
echo $Sum
