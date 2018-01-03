# Read OS-specific scripts.
for file in {alias,env,}; do
    if [[ -f "$DOTFILES/os/linux/$file.sh" ]]; then
        source "$DOTFILES/os/linux/$file.sh"
    fi
done

# Make binaries executable.
find $DOTFILES/os/linux/bin -type f -exec chmod +x {} \;