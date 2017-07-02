#!/usr/bin/env bash
export DOTFILES=~/Projects/shell/dotfiles
for file in {env,prompt,functions}; do
    [[ -f "$DOTFILES/$file.sh" ]] && source "$DOTFILES/$file.sh"
done

[[ -d "$DOTFILES/macos" ]] && [[ -f "$DOTFILES/macos/entry.sh" ]] && source "$DOTFILES/macos/entry.sh"