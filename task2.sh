#!bin/bash
hash1=$1
hash2=$2
git log --pretty=%s $hash2..$hash1 > 'release_notes.md'
