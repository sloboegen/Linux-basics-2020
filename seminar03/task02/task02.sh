#! /bin/bash
a="${RANDOM} +" 
e=$(expr $RANDOM % 64)
w="*"
qq=$(echo "$w")
q=$(expr $e "$qq" 32768)
e=$(expr $RANDOM "+" $q)
printf $e
printf " "
z=$(expr $e "%" 2)
prime=1
if [[ "$e" == "1" ]]; then
	prime=0
fi
if [[ "$e" == "2" ]]; then
	prime=1
else
	if [[ "$z" == "0" ]]; then
		prime=0
	else
		i=3
		while [[ $(($i*$i)) -le $e ]]
		do
			v=$(($e%$i))
			if [[ "$v" == "0" ]]; then
				prime=0
				break
			fi
			i=$(($i+2))
		done
	fi
fi
if [[ "$prime" == "1" ]]; then
	echo "true"
else
	echo "false"
fi