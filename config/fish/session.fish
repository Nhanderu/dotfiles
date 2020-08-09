source "$__fish_config_dir/env.fish"
source "$__fish_config_dir/alias.fish"

set -l current_os (uname | tr '[A-Z]' '[a-z]')

find $DOTFILES/os/$current_os/bin -type f -exec chmod +x {} \;
for file in $DOTFILES/os/$current_os/*.fish
    if test -f "$file"
        source "$file"
    end
end

if test -z "$TMUX"
    tmux attach
    or tmux new-session
    and exit
end
