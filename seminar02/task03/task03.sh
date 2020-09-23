ps -A | grep "tail -f /dev/null" | cut -d ' ' -f 1 | kill
