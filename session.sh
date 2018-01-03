#!/usr/bin/env sh

#
# Executes in every new Terminal session.
#

# Sets environment variables and aliases.
dotfiles="$HOME/projects/shell/dotfiles"
source $dotfiles/env.sh
source $dotfiles/alias.sh

# Executes dotfiles' subpackages entrypoint scripts.
for dir in {prompt,}; do
    entry="$DOTFILES/$dir/entry.sh"
    if [[ -f "$entry" ]]; then
        source "$entry"
    fi
done

# Executes dotfiles' OS-specific entrypoint scripts,
# if matches the current OS.
current_os="$(uname | tr '[A-Z]' '[a-z]')"
entry="$DOTFILES/os/$current_os/entry.sh"
if [[ -f "$entry" ]]; then
    source "$entry"
fi
