#!/bin/bash
kill -TERM $(ps -aux | grep -i tail | cut -d ' ' -f8)

