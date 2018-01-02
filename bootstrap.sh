current_sh="bash"

# Sets environment variables.
dotfiles="$HOME/projects/shell/dotfiles"
source $dotfiles/env.sh

cp -rT $DOTFILES/sh/$current_sh/ ~
cp -rT $DOTFILES/config/         ~/.config