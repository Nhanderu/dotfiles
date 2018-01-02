export BROWSER=$(which firefox)
export EDITOR=$(which nano)
export TERMINAL=$(which alacritty)

export PROJ="$HOME/projects"
export DOTFILES="$PROJ/shell/dotfiles"
export GOPATH="$PROJ/go"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

PATH="/usr/local/sbin"
PATH+=":/usr/local/bin"
PATH+=":/usr/bin"
PATH+=":/usr/bin/site_perl"
PATH+=":/usr/bin/vendor_perl"
PATH+=":/usr/bin/core_perl"
PATH+=":$GOPATH/bin"
PATH+=":$DOTFILES/bin"
export PATH