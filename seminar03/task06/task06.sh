#! /bin/bash
input=$1
while IFS= read -r line
do
	printf "$line "
	echo $(echo "$line" | wc -w)
done < "$input"