#! /bin/bash
echo "$(sed -e 's/name=/name=Alexander/' -e 's/lastname=Alexander/lastname=Golovastenko/' file.property)" > file.property
