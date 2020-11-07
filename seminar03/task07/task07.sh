#!/bin/bash

for f in `find -name "*.cpp"`
do

touch compile.out
chmod +x compile.out
g++ $f -o compile.out
./compile.out
rm compile.out
done
