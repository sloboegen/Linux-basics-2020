#! /bin/bash
sed -E 's/^(..)(..)(..)(..)/\2\1\3\4/' digits.txt | sed -r 's/\s//g'
