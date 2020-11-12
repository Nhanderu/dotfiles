bass source $__fish_config_dir/sh/env.sh
bass source $__fish_config_dir/sh/os.sh

alias aura "aura --color=auto"
alias tmux "tmux -f $XDG_CONFIG_HOME/tmux/tmux.conf"

if test -z "$TMUX"
    tmux attach
    or tmux new-session
    and exit
end

if status --is-login
and test -z "$DISPLAY"
and test -n "$XDG_VTNR"
and test "$XDG_VTNR" -eq 1
    startx
end
