current_sh="bash"

# Sets environment variables.
dotfiles="$HOME/projects/shell/dotfiles"
source $dotfiles/env.sh

# Copies configuration files.
cp -rT $DOTFILES/sh/$current_sh/ ~
cp -rT $DOTFILES/config/         ~/.config

# Make binaries executable.
find $DOTFILES/bin -type f -exec chmod +x {} \;