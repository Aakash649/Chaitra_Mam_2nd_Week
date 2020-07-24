#!/bin/bash -x


x=$((RANDOM%2))

if [ $x -ne 1 ]
then 
echo "Head"
else
echo "Tail"
fi
