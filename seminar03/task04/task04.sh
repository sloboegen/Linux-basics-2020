#! /bin/bash
read -a a < numbers.txt
len=${#a[@]}
i=0
while [[ $i -lt $len ]]
do
	v=${a[$i]}
	res=1
	c=1
	while [[ $c -le $v ]]
	do
		res=$(($res*$c))
		c=$(($c+1))
	done
	printf $res
	printf " "
	i=$(($i+1))
done