#!/bin/bash
# Didn't get the point of task. Here's my representation of it:

path=$1

echo path is $path

a=$(cat $path)
echo "Commit message is:"
echo $a
if [[ "$a" =~ "^issue-[0-9]{1,} *" ]];then
  echo commit format test passed
  exit 0
else
  echo commit format test failed
  exit 1
fi