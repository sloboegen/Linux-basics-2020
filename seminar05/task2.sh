#!/bin/bash
git log --pretty=oneline > tmp.txt

open="0"
echo -n "$word" > "release_notes.md"

while read str; do
    for word in $str; do
        if [[ "$word" == "$1" ]]; then
            open="1"
        fi
        if [[ "$word" == "$2" ]]; then
	    	open="0"
	    fi
        if [[ "$open" == "1" ]]; then
            echo -n "$word " >> "release_notes.md"
        fi
    done
    echo  >> "release_notes.md"
done < "tmp.txt"

rm tmp.txt