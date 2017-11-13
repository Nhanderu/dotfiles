for file in {pkgs}; do
    if [[ test -f "$DOTFILES/os/arch/$file.sh" ]]; then
        source "$DOTFILES/os/arch/$file.sh"
    fi
done
