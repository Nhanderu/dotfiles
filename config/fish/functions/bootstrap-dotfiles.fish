function bootstrap-dotfiles
    source $__fish_config_dir/env.fish
    cp -rp "$DOTFILES/config/." "$XDG_CONFIG_HOME"
    find "$DOTFILES/bin" -type f -exec chmod +x {} \;
    source $__fish_config_dir/session.fish
end
