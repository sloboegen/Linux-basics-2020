#!/bin/bash
walk(){
    next=$(ls)
    run=$(ls | egrep "^.*\.cpp$")

    for r in $run; do
        g++ -std=c++17 $r -o main.o
        ./main.o
    done

    for to in $next; do
        if [ -d $to ]; then
            cd $to
            walk
            cd ../
        fi
    done

}

walk 