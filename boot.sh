#!/usr/bin/env sh

#
# Executes during boot.
#

# Sets environment variables.
dotfiles="$HOME/projects/shell/dotfiles"
source $dotfiles/env.sh

# Configures monitors.
monitor_left="HDMI-2"
monitor_right="HDMI-1-1"

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

# Starts XOrg.
if [ -z "$DISPLAY" ] && \
    [ -n "$XDG_VTNR" ] && \
    [ "$XDG_VTNR" -eq 1 ]; then

    startx
fi