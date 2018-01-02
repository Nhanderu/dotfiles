current_sh="bash"

base_path=$(realpath "$(dirname "$0")")
source $base_path/env.sh

cp -rT $DOTFILES/sh/$current_sh/ ~
cp -rT $DOTFILES/config/         ~/.config