#!/bin/bash

# Handle mouse clicks
case "$BLOCK_BUTTON" in
    1)  # Left click: toggle play/pause
        playerctl -p spotify play-pause
        ;;
    4)  # Scroll up: next track
        playerctl -p spotify next
        ;;
    5)  # Scroll down: previous track
        playerctl -p spotify previous
        ;;
esac

# Get current song info from Spotify only
status=$(playerctl -p spotify status 2>/dev/null)
if [ $? -ne 0 ]; then
    echo " Stopped"
    echo "Stopped"
    echo "#888888"
    exit
fi

artist=$(playerctl -p spotify metadata artist 2>/dev/null)
title=$(playerctl -p spotify metadata title 2>/dev/null)

if [ "$status" = "Playing" ]; then
    color="#1DB954"   # Spotify green
elif [ "$status" = "Paused" ]; then
    color="#e0af68"   # Tokyo Night yellow
else
    color="#888888"
fi

echo " $artist - $title"
echo "$title"
echo "$color"

