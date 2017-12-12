for file in {env,ssh,}; do
    if [[ -f "$DOTFILES/os/darwin/$file.sh" ]]; then
        source "$DOTFILES/os/darwin/$file.sh"
    fi
done
