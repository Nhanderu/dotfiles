#!/usr/bin/env sh

source "$DOTFILES/env.sh"
source "$DOTFILES/alias.sh"
source "$DOTFILES/tools.sh"
source "$DOTFILES/prompt.sh"

current_os=`uname | tr '[A-Z]' '[a-z]'`
if [[ -f "$DOTFILES/os/$current_os/entry.sh" ]]; then
    source "$DOTFILES/os/$current_os/entry.sh"
fi

if [ -z "$TMUX" ]; then
    tmux attach || tmux new-session && exit
fi
