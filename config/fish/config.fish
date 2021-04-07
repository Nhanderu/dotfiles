bass source $__fish_config_dir/sh/env.sh
bass source $__fish_config_dir/sh/os.sh

alias tmux "tmux -f $XDG_CONFIG_HOME/tmux/tmux.conf"

set fish_color_normal white
set fish_color_command af3a03 # orange
set fish_color_quote blue
set fish_color_redirection fe8019 # brorange
set fish_color_end yellow
set fish_color_error red
set fish_color_param fe8019 # brorange
set fish_color_comment brblack
set fish_color_operator yellow
set fish_color_escape brblack
set fish_color_autosuggestion brblack
set fish_color_cancel red
set fish_color_search_match green

if status --is-login
and test -z "$DISPLAY"
and test (tty) = "/dev/tty1"
    exec sway
end

if status --is-interactive
and test -z "$TMUX"
    tmux attach
    or tmux new-session
    and exit
end

if status --is-interactive
    source (goenv init - | psub)
    source (nodenv init - | psub)
end
