# Read OS-specific scripts.
for file in {env,ssh,}; do
    if [[ -f "$DOTFILES/os/darwin/$file.sh" ]]; then
        source "$DOTFILES/os/darwin/$file.sh"
    fi
done

# Make binaries executable.
find $DOTFILES/os/darwin/bin -type f -exec chmod +x {} \;