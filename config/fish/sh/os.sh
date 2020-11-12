current_os=`uname | tr '[A-Z]' '[a-z]'`
current_os_dir=$DOTFILES/os/$current_os

find $current_os_dir/bin -type f -exec chmod +x {} \;
for file in $current_os_dir/*.sh; do
    if test -f "$file"; then
        source "$file"
    fi
done
