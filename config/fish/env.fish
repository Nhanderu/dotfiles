set -Ux BROWSER (which firefox)
set -Ux EDITOR (which vim)
set -Ux TERMINAL (which alacritty)

set -Ux PROJ "$HOME/projects"
set -Ux DOTFILES "$PROJ/nhanderu/dotfiles"

set -Ux XDG_CONFIG_HOME "$HOME/.config"
set -Ux XDG_CACHE_HOME "$HOME/.cache"
set -Ux XDG_DATA_HOME "$HOME/.local/share"

set -Ux XINITRC "$XDG_CONFIG_HOME/X11/xinitrc"


set -Ux RUSTUP_HOME "$XDG_DATA_HOME/rustup"
set -Ux CARGO_HOME "$XDG_DATA_HOME/cargo"
set -Ux CARGO_NAME "Rafael Escobar"
set -Ux CARGO_EMAIL "rescobar@protonmail.com"

set -Ux GOENV_ROOT "$XDG_DATA_HOME/goenv"
set -Ux GOENV_SHELL bash
set -Ux GOROOT "/usr/local/go"
set -Ux GOPATH "$XDG_DATA_HOME/go"

set -e PATH
set -Ux PATH "$DOTFILES/bin"
set PATH $PATH "/bin"
set PATH $PATH "/sbin"
set PATH $PATH "/usr/bin"
set PATH $PATH "/usr/sbin"
set PATH $PATH "/usr/local/bin"
set PATH $PATH "/usr/local/sbin"
set PATH $PATH "$GOROOT/bin"
set PATH $PATH "$GOPATH/bin"
set PATH $PATH "$CARGO_HOME/bin"
set PATH $PATH "$GOENV_ROOT/bin"
set PATH $PATH "$GOENV_ROOT/shims"
