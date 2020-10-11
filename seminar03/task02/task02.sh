#!/bin/bash
e=$((RANDOM%2**20))
echo $e
function prime
{
for((i=2; i<=e/2; i++))
do
  if [ $((e%i)) -eq 0 ]
  then
    echo "$e False."
    exit
  fi
done
echo "$e True."
}
r=`prime $number`
echo "$r"
