#! /bin/bash
name=$1
while read line; do
    for word in $line; do
    	echo $word
   	done
   	echo $line | wc -w
done <"$name"