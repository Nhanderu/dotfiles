#!/usr/bin/env sh

#
# Executes during boot.
#

if [ -z "$DISPLAY" ] && \
    [ -n "$XDG_VTNR" ] && \
    [ "$XDG_VTNR" -eq 1 ]; then

    startx
fi

monitor_left=HDMI-2
monitor_right=HDMI-1-1

xrandr \
    --output $monitor_left \
    --auto \
    --primary

xrandr \
    --output $monitor_right \
    --auto \
    --right-of $monitor_left

unset monitor_left
unset monitor_right