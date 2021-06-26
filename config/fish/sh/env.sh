export BROWSER=$(which brave)
export VISUAL=$(which nvim)
export TERMINAL=$(which alacritty)

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export PROJ="$HOME/projects"
export DOTFILES="$PROJ/nhanderu/dotfiles"

export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export CARGO_NAME="Rafael Escobar"
export CARGO_EMAIL="rescobar@pm.me"

export GOENV_ROOT="$XDG_DATA_HOME/goenv"
export GOENV_SHELL=fish
export GOROOT="/usr/local/go"
export GOPATH="$XDG_DATA_HOME/go"

export XDG_CURRENT_DESKTOP=wayland
export SDL_VIDEODRIVER=wayland

export BEMENU_OPTS="\
    --ignorecase \
    --prompt=search \
    --fn \"FiraMono-Regular 10\" \
    --line-height=20
    --tb=#282828 \
    --tf=#79740e \
    --fb=#282828 \
    --ff=#fdf4c1 \
    --nb=#282828 \
    --nf=#fdf4c1 \
    --hb=#282828 \
    --hf=#79740e \
    --sb=#282828 \
    --sf=#79740e \
"

export PATH="$DOTFILES/bin"
PATH+=":/bin"
PATH+=":/sbin"
PATH+=":/usr/bin"
PATH+=":/usr/sbin"
PATH+=":/usr/local/bin"
PATH+=":/usr/local/sbin"
PATH+=":/opt"
PATH+=":$GOROOT/bin"
PATH+=":$GOPATH/bin"
PATH+=":$CARGO_HOME/bin"
PATH+=":$GOENV_ROOT/bin"
PATH+=":$GOENV_ROOT/shims"
