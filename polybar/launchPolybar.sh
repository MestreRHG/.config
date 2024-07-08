#!/bin/bash

#Terminate already running bar instances
killall -q polybar

# Wait untill the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
polybar my_bar &
