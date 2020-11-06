#! /bin/bash
grep -n "https://" urls.txt | sed -e 's/<p><a href="//' -e 's/">W3C<\/a><\/p>//' -e 's/">Google<\/a><\/p>//' | sed 's/.*/<<&>>/'
