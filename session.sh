#!/usr/bin/env sh

#
# Executes in every new Terminal session.
#

# Executes dotfiles entrypoint script.
for file in {env,functions,}; do
    if [[ -f "$DOTFILES/$file.sh" ]]; then
        source "$DOTFILES/$file.sh"
    fi
done

# Executes dotfiles' subpackages entrypoint scripts.
for dir in {prompt,}; do
    if [[ -f "$DOTFILES/$dir/entry.sh" ]]; then
        source "$DOTFILES/$dir/entry.sh"
    fi
done

# Executes dotfiles' OS-specific entrypoint scripts,
# if matches the current OS.
current_os="$(uname | tr '[A-Z]' '[a-z]')"
entry="$DOTFILES/os/$current_os/entry.sh"
if [[ -f "$entry" ]]; then
    source "$entry"
fi
