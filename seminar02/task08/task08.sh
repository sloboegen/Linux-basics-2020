#! /bin/bash
cat hamlet.txt | sed -e "s/ /\n/g" | grep -i "the"| sed -e "s/[[:punct:]]\+//g" | awk '{print "|" length "|"}' | grep "|3|" | wc -l

