#!/bin/bash
kill $(ps -e | grep tail | awk '{print $1}')

