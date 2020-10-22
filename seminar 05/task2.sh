#!/bin/bash
git log --pretty=oneline > tmp.txt

echo -n "$word" > "release_notes.md"

while read str; do
    for word in $str; do
        if [[ "$word" == "$1" ]]; then
            echo -n "$word " >> "release_notes.md"
    done
    echo  >> "release_notes.md"
done < "tmp.txt"

rm tmp.txt
