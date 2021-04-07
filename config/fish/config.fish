bass source $__fish_config_dir/sh/env.sh
bass source $__fish_config_dir/sh/os.sh

alias tmux "tmux -f $XDG_CONFIG_HOME/tmux/tmux.conf"

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
