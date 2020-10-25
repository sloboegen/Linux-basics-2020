#! /bin/bash
grep -no "https://[0-9a-z.]*/" urls.txt | sed -e "s/^/<</" -e "s/$/>>/"
