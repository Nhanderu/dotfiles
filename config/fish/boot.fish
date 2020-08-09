source "$__fish_config_dir/env.fish"

if test -z "$DISPLAY"
and test -n "$XDG_VTNR"
and test "$XDG_VTNR" -eq 1
    startx
end
