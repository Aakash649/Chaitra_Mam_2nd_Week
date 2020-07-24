#!/bin/bash 

for filename in $(ls)
do

ext=${filename##*\.}

case "$ext" in
java) echo "$filename:java source file"
;;
o) echo "$filename: object file"
;;
sh) echo "$filename : shell script"
;;
txt) echo "filename : Text File"
;;
*) echo "filename : Not processed"
;;
esac
done
