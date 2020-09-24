#! /bin/bash
name=$1
while read line; do
    if [[ -n $line ]]; then
    	echo $line
    fi
done <"$name"