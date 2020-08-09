function fish_prompt

    set -g fish_prompt_pwd_dir_length 0

    echo
    echo -n (set_color green)(whoami)
    echo -n (set_color white)" in "
    echo -n (set_color brgreen)(prompt_pwd)

    set -l is_git_work_tree (git rev-parse --is-inside-work-tree 2> /dev/null)
    if test "$is_git_work_tree" = "true"

        set -l git_branch ( \
            git symbolic-ref --quiet --short HEAD 2> /dev/null; or \
            git rev-parse --short HEAD 2> /dev/null; or \
            echo "(unknown)")

        echo -n (set_color white)" on "
        echo -n (set_color bryellow)"$git_branch"

        set -l is_git_dir (git rev-parse --is-inside-git-dir 2> /dev/null)
        if test "$is_git_dir" = "false"

            git update-index --really-refresh -q &> /dev/null

            set -l git_status

            if not git diff --quiet --ignore-submodules --cached
                set git_status $git_status "stage"
            end

            if not git diff-files --quiet --ignore-submodules --
                set git_status $git_status "changes"
            end

            set -l git_new_files (git ls-files --others --exclude-standard)
            if test -n "$git_new_files"
                set git_status $git_status "new"
            end

            if git rev-parse --verify refs/stash &> /dev/null
                set git_status $git_status "stash"
            end

            if test (count $git_status) != "0"
                echo -n (set_color white)" with "(set_color yellow)
                echo -n (string join \
                    (set_color white)" and "(set_color yellow) \
                    $git_status)
            end

        end

    end

    echo
    echo -n (set_color white)"→ "

end
