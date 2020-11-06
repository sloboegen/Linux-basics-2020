#!/bin/bash
a=$(ps -e | grep "tail" | cut -d " " -f 4)
kill $a
