#!/usr/bin/env sh

for file in {alias,env,}; do
    if [[ -f "$DOTFILES/os/linux/$file.sh" ]]; then
        source "$DOTFILES/os/linux/$file.sh"
    fi
done

find $DOTFILES/os/linux/bin -type f -exec chmod +x {} \;
