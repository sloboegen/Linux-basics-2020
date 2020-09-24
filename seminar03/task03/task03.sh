#! /bin/bash
read var1
read var2

res=1

for ((i = 2 ; i < $var2 ; i++)); do
  if [[ $(($var1 % $i)) -eq 0 && $(($var2 % $i)) -eq 0 ]]; then
  	res=$i
  fi
done

echo $var1 $var2 $res