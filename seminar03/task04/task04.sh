#! /bin/bash
num1=$(cut -d" " -f1 numbers.txt)
num2=$(cut -d" " -f2 numbers.txt)
num3=$(cut -d" " -f3 numbers.txt)
echo $num1 $num2 $num3
fact1=1
fact2=1
fact3=1

while [ $num1 -gt 1 ]
do
  fact1=$((fact1 * num1))  
  num1=$((num1 - 1))      
done

while [ $num2 -gt 1 ]
do
  fact2=$((fact2 * num2))  
  num2=$((num2 - 1))      
done

while [ $num3 -gt 1 ]
do
  fact3=$((fact3 * num3))  
  num3=$((num3 - 1))      
done

echo $fact1 $fact2 $fact3
