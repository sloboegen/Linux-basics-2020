#!/bin/bash
out=$(find . -name "*.cpp" ! -type d)
while IFS= read -r line
do
	g++ $line
	./a.out
done <<< $out