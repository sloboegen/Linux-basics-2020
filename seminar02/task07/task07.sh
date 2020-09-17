#! /bin/bash
echo "$(awk '{print $2 " " $1 " " $3 " " $4 " " $5 " "}' digits.txt)" > digits.txt

