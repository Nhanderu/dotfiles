for file in {pkgs,functions,}; do
    if [[ -f "$DOTFILES/os/linux/$file.sh" ]]; then
        source "$DOTFILES/os/linux/$file.sh"
    fi
done
