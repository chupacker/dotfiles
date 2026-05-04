#!/bin/bash

# Detect default sink
SINK=$(pactl info | grep "Default Sink" | cut -d ' ' -f3)

# Handle mouse clicks
case "$BLOCK_BUTTON" in
    1) pactl set-sink-mute "$SINK" toggle ;;   # left click
    2) pavucontrol & ;;                       # middle click
    4) pactl set-sink-volume "$SINK" +5% ;;   # scroll up
    5) pactl set-sink-volume "$SINK" -5% ;;   # scroll down
esac

# Get volume info
vol_info=$(pactl list sinks | grep -A 15 "Name: $SINK")
muted=$(echo "$vol_info" | grep "Mute:" | awk '{print $2}')
volume=$(echo "$vol_info" | grep "Volume:" | head -n 1 | awk '{print $5}' | tr -d '%')

# If muted, force display to 0%
if [ "$muted" = "yes" ]; then
    volume=0
fi

# i3blocks output (2 lines only)
echo "$volume%"
echo "$volume%"

