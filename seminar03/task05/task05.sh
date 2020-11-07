#! /bin/bash
nameoffile="blank"
sed '/^$/d' "$nameoffile.txt" > out.txt
cat out.txt
