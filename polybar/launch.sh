#!/bin/bash

# Kill existing polybar instances
killall -q polybar

# Wait until they are fully gone
while pgrep -x polybar >/dev/null; do sleep 0.1; done

# Launch bar
polybar example &
