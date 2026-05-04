#!/bin/sh
free -m | awk '/Mem:/ {
    used=$3/1024
    total=$2/1024
    printf "%.1fG %.0f%%\n", used, used/total*100
}'

