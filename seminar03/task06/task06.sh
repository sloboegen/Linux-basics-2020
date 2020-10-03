#! /bin/bash
# name=$1
# while read line; do
#    	echo -n "$line "
#    	echo $line | wc -w
# done <"$name"
myFile="file.txt"
while read str; do
    echo -n "$str "
    echo $str | wc -w
done < "$myFile"