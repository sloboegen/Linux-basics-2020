#! /bin/bash
read a b
printf $a
printf " "
printf $b
printf " "
while [[ b -ne 0 ]]
do
	v=$((a%b))
	a=$b
	b=$v
done
echo $a