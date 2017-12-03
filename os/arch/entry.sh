for file in {pkgs,functions,}; do
    if [[ -f "$DOTFILES/os/arch/$file.sh" ]]; then
        source "$DOTFILES/os/arch/$file.sh"
    fi
done
