#!/bin/sh
read cpu a b c idle rest < /proc/stat
prev_idle=$idle
prev_total=$((a+b+c+idle))
sleep 0.1
read cpu a b c idle rest < /proc/stat
total=$((a+b+c+idle))
usage=$((100*(total-prev_total-(idle-prev_idle))/(total-prev_total)))
echo "${usage}%"

