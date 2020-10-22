#!/bin/bash

path=$1

echo path is $path

commit=$(cat $path)
echo "Commit message is:"
echo $commit
if [[ "$commit" =~ "^issue-[0-9]{1,} *" ]];then
  echo OK
  exit 0
else
  echo fail
  exit 1
fi
