#!/usr/bin/env bash

export DOTFILES=$dotfiles
export BROWSER=/usr/bin/chromium
export EDITOR=/usr/bin/nano
export PROJ="$HOME/Projects"
export GOPATH="$PROJ/go"
export TERMINAL="alacritty"

export PATH+=":$GOPATH/bin"
export PATH+=":$DOTFILES/cmd"
