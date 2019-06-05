#!/usr/bin/env sh

#
# Executes during boot.
#

# Sets environment variables.
dotfiles="$HOME/projects/dotfiles"
source $dotfiles/env.sh

# Starts XOrg.
if [[ -z "$DISPLAY" ]] && \
    [[ -n "$XDG_VTNR" ]] && \
    [[ "$XDG_VTNR" -eq 1 ]]; then

    startx
fi
