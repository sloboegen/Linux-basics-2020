#!/bin/bash
e=$((RANDOM%2**15))
echo $e
head -c $e /dev/urandom > rnd | ls -sh rnd
