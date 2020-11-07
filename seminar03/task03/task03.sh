#! /bin/bash
read -r a b
#A and B output
echo -en "$a\n$b\n"
#NOD condition
while [ $a -gt 0 ] && [ $b -gt 0 ]
do
if [ $a -gt $b ]
then
a=$((a%b))
else
b=$((b%a))
fi
done
#nod output
echo $((a+b))
