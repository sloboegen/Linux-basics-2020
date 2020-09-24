#! /bin/bash
awk ' { t = $1; $1 = $2; $2 = t; print; } ' digits.txt | sed 's/ //g'