#!/usr/bin/env bash
export DOTFILES=~/Projects/shell/dotfiles
for file in {env,prompt}; do
    [[ -f "$DOTFILES/$file.sh" ]] && source "$DOTFILES/$file.sh"
done