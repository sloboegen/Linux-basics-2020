#!/bin/bash
kill $(ps | grep "tail -f /dev/null" | head -1 | cut -d" " -f1)
