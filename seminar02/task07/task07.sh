#! /bin/bash
sed -E 's/^(\S+\s+)(\S+\s+)/\2\1/' digits.txt | sed 's/ //g'

