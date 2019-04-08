current_sh="bash"

# Sets environment variables.
dotfiles="$HOME/projects/shell/dotfiles"
source $dotfiles/env.sh

# Copies configuration files.
cp -rp $DOTFILES/sh/$current_sh/. $HOME
cp -rp $DOTFILES/config/.         $XDG_CONFIG_HOME

# Make binaries executable.
find $DOTFILES/bin -type f -exec chmod +x {} \;
