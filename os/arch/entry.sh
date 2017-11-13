for file in {pkgs}; do
    if [[ test -f "$DOTFILES/os/darwin/$file.sh" ]]; then
        source "$DOTFILES/os/darwin/$file.sh"
    fi
done
