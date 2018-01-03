for file in {alias,}; do
    if [[ -f "$DOTFILES/os/linux/$file.sh" ]]; then
        source "$DOTFILES/os/linux/$file.sh"
    fi
done
