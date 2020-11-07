#!/bin/bash
randomnum=$RANDOM
echo $randomnum
head -c $randomnum /dev/random > rnd.txt
