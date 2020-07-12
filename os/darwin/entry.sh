#!/usr/bin/env sh

for file in {env,}; do
    if [[ -f "$DOTFILES/os/darwin/$file.sh" ]]; then
        source "$DOTFILES/os/darwin/$file.sh"
    fi
done

find $DOTFILES/os/darwin/bin -type f -exec chmod +x {} \;
