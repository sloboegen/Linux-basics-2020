#! /bin/bash

read line<"numbers.txt"
out=""

for num in $line; do
	result=1
    for (( i = 2; i <= $num; i++ )); do
     	result=$(($result*$i))
    done
    out=$out" "$result
done

echo $out