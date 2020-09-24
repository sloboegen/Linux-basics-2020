#!/bin/bash
kill -TERM $(ps -aux | grep tail | cut --delimiter=' ' -f5)