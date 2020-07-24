#!/bin/bash -x

read -p "Enter the value of a :" a;
read -p "Enter the value of b :" b;
read -p "Enter the value of c :" c;
 
integers[k]=$(( $(( $a + $b )) * $c ));
((k++))

integers[k]=$(( $(( $a % $b )) + $c ));
((k++))

integers[k]=$(( $(( $c + $a )) / $c ));
((k++))

integers[k]=$(( $(( $a * $b )) + $c ));
((k++))

biggest=${integers[0]}
smallest=${integers[0]}

for k in ${integers[@]}
do
     if [[ $k -gt $biggest ]]
     then
        biggest="$k"
     fi

     if [[ $k -lt $smallest ]]
     then
        smallest="$k"
     fi
done

echo "The largest number is $biggest"
echo "The smallest number is $smallest"

