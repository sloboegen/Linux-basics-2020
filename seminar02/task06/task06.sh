#! /bin/bash
grep -n https:// urls.txt | awk -F ':<p><a href="' '{print $1"|" $2}' | awk -F '"' '{print $1}' | awk -F '|' '{print "<<" $1 ":" $2 ">>"}'

