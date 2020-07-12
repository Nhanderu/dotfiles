#!/usr/bin/env sh

export BROWSER=`which firefox`
export EDITOR=`which vim`
export TERMINAL=`which alacritty`

export PROJ="$HOME/projects"
export DOTFILES="$PROJ/nhanderu/dotfiles"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export NVM_DIR="$XDG_CONFIG_HOME/nvm"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export GOENV_ROOT="$XDG_DATA_HOME/goenv"

export GOROOT="/usr/local/go"
export GOPATH="$XDG_DATA_HOME/go"

export GOENV_SHELL=bash

PATH="$DOTFILES/bin"
PATH+=":/bin"
PATH+=":/sbin"
PATH+=":/usr/bin"
PATH+=":/usr/sbin"
PATH+=":/usr/local/bin"
PATH+=":/usr/local/sbin"
PATH+=":$GOROOT/bin"
PATH+=":$GOPATH/bin"
PATH+=":$CARGO_HOME/bin"
PATH+=":$GOENV_ROOT/bin"
PATH+=":$GOENV_ROOT/shims"
export PATH
