#!/bin/sh

# Find first CPU temperature sensor
for hw in /sys/class/hwmon/hwmon*/temp*_input; do
    label=$(cat "${hw%/*}/name" 2>/dev/null)
    case "$label" in
        k10temp|coretemp)
            temp=$(cat "$hw")
            echo "$((temp / 1000))°C"
            exit 0
            ;;
    esac
done

echo " N/A"

