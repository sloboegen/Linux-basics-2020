#! /bin/bash
NUMLIST=numbers.txt
{ 
read -r line 
} < $NUMLIST
a=$(echo $line | cut -d " " -f1)
b=$(echo $line | cut -d " " -f2)
c=$(echo $line | cut -d " " -f3)

#find factorial

function factorial {

result=1
local num=$1

while [ $num -gt 0 ]
do
result=$((result*num))
num=$((num-1))
done
}

factorial "$a"
echo -ne "$result\n"
factorial "$b"
echo -ne "$result\n"
factorial "$c"
echo -ne "$result\n"
