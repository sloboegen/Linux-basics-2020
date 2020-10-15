#!/bin/bash
var1=$RANDOM
touch rnd.txt
head -c $var1 /dev/urandom > rnd.txt
echo $var1