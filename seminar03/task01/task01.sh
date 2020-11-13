#!/bin/bash
a=$RANDOM
echo $a
dd if=/dev/random of=rnd.txt bs=1 count=$a &> /dev/null