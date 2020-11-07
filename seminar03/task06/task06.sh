#! /bin/bash
while IFS= read -r line
do
	temp=`echo $line | wc -w`
	echo "$line$temp"
done < file.txt
