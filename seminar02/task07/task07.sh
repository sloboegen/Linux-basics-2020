#! /bin/bash
awk -F" " '{printf "%d %d", $2, $1}; {for(i=3;i<=NF;++i)printf " %d",$i}; {printf "\n"}' digits.txt
