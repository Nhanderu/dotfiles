#!/usr/bin/env sh

files=(\
    $NVM_DIR/nvm.sh\
    $NVM_DIR/bash_completion\
    $GOENV_ROOT/completions/goenv.bash\
    /etc/bash_completion\
)

for file in "${files[@]}"; do
    if [[ -f "$file" ]]; then
        source "$file"
    fi
done

for file in /usr/local/etc/bash_completion.d/*; do
    source "$file"
done

configure-goenv-command
