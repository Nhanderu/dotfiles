current_sh="bash"
base_path=$(realpath "$(dirname "$0")")

sh_files=$(ls -A $base_path/sh/$current_sh/)
for file in $sh_files; do
    ln -sfv $base_path/sh/$current_sh/$file ~
done

config_files="
    .rtorrent.rc
"
for file in $config_files; do
    ln -sfv $base_path/$file ~
done
