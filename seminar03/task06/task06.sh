#! /bin/bash
awk '{ print NF, $0 }' file.txt | awk '{num=$1;$1=""; sub(/^ /,""); printf("%s|%s\n",$0,num);}'
