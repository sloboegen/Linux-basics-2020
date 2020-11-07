#! /bin/bash
firstNumber=$RANDOM
secondNumber=$RANDOM
secondNumber=$((firstNumber/1024))
int=$((firstnumber*secondnumber))
echo $int
#check pRoStOtA
 i=0
 j=2
while [ $int -ge $(( i*i)) ] && [ $j -ne 1 ]
	do
		if [ $(( $int % i )) -eq 0 ]
		then
			j=1
		else
			i=$(( i+1 ))
		fi
		done
	if [ $j -eq 1 ]
		then
			echo false
		else
			echo true
		fi
		
