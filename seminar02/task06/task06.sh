#! /bin/bash
grep -n https:// urls.txt | sed -e 's/<p>/"/' | awk -F '"' '{print $3}'
