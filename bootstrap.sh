current_sh="bash"

for file in ~/projects/shell/dotfiles/sh/$current_sh/.*; do
    ln -sfv $file ~
done

ln -sfv ~/projects/shell/dotfiles/.rtorrent.rc ~
