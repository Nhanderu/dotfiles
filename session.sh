#!/usr/bin/env sh

#
# Executes in every new Terminal session.
#

dotfiles=~/projects/shell/dotfiles

# Executes dotfiles entrypoint script.
for file in {env,functions,}; do
    if [[ -f "$dotfiles/$file.sh" ]]; then
        source "$dotfiles/$file.sh"
    fi
done

# Executes dotfiles' subpackages entrypoint scripts.
for dir in {prompt,}; do
    if [[ -f "$dotfiles/$dir/entry.sh" ]]; then
        source "$dotfiles/$dir/entry.sh"
    fi
done

# Executes dotfiles' OS-specific entrypoint scripts,
# if matches the current OS.
current_os="$(uname | tr '[A-Z]' '[a-z]')"
current_os_entry="$dotfiles/os/$current_os/entry.sh"
if [[ -f "$current_os_entry" ]]; then
    source "$current_os_entry"
fi

export DOTFILES=$dotfiles