#!/bin/bash -x

a=( 23 45 6 7 22 34 56 87 990 65 )
a sort >b

echo ${a[@]}
echo ${b[@]}

