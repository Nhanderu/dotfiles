export BROWSER=$(which firefox)
export EDITOR=$(which nano)
export TERMINAL=$(which alacritty)

export PROJ="$HOME/projects"
export DOTFILES="$PROJ/shell/dotfiles"
export GOPATH="$PROJ/go"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"

PATH="$DOTFILES/bin"
PATH+=":/usr/local/sbin"
PATH+=":/usr/local/bin"
PATH+=":/usr/bin"
PATH+=":$GOPATH/bin"
PATH+=":/usr/bin/site_perl"
PATH+=":/usr/bin/vendor_perl"
PATH+=":/usr/bin/core_perl"
export PATH