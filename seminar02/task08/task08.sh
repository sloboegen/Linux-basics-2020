#! /bin/bash
cat hamlet.txt | grep -i -o " the " | wc -l | xargs
