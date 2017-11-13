#!/usr/bin/env bash

dotfiles=~/Projects/shell/dotfiles

# Executes dotfiles entrypoint script.
for file in {env,functions}; do
    if [[ test -f "$dotfiles/$file.sh" ]]; then
        source "$dotfiles/$file.sh"
    fi
done

# Executes dotfiles' subpackages entrypoint scripts.
for dir in {prompt}; do
    if [[ test -f "$dotfiles/$dir/entry.sh" ]]; then
        source "$dotfiles/$dir/entry.sh"
    fi
done

current_os="$(uname | tr '[A-Z]' '[a-z]')"

# Executes dotfiles' OS-specific entrypoint scripts,
# if matches the current OS.
if [[ test -d "$dotfiles/os" ]]; then
    for entry in "$dotfiles/os/*/entry.sh"; do
        if [[ test $entry = "$dotfiles/os/$current_os/entry.sh" ]]; then
            source "$entry"
        fi
    done
fi

export DOTFILES=$dotfiles