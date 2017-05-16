#!/usr/bin/env bash

# Basically copied from Mathias Bynens' dotfile:
# https://github.com/mathiasbynens/dotfiles

check_git() {
	local s='';
	local branchName='';

	# Check if the current directory is in a Git repository.
	if [ $(git rev-parse --is-inside-work-tree &>/dev/null; echo "${?}") == '0' ]; then

		# check if the current directory is in .git before running git checks
		if [ "$(git rev-parse --is-inside-git-dir 2> /dev/null)" == 'false' ]; then

			# Ensure the index is up to date.
			git update-index --really-refresh -q &>/dev/null;

			# Check for uncommitted changes in the index.
			if ! $(git diff --quiet --ignore-submodules --cached); then
				s+='+';
			fi;

			# Check for unstaged changes.
			if ! $(git diff-files --quiet --ignore-submodules --); then
				s+='!';
			fi;

			# Check for untracked files.
			if [ -n "$(git ls-files --others --exclude-standard)" ]; then
				s+='?';
			fi;

			# Check for stashed files.
			if $(git rev-parse --verify refs/stash &>/dev/null); then
				s+='$';
			fi;

		fi;

		# Get the short symbolic ref.
		# If HEAD isn’t a symbolic ref, get the short SHA for the latest commit
		# Otherwise, just give up.
		branchName="$(git symbolic-ref --quiet --short HEAD 2> /dev/null || \
			git rev-parse --short HEAD 2> /dev/null || \
			echo '(unknown)')";

		[ -n "${s}" ] && s=" ${s}";

		echo -e "${1}${branchName}${2}${s}";
	else
		return;
	fi;
}

tput sgr0; # reset colors

reset=$(tput sgr0);
important=$(tput bold);
normal=$(tput setaf 15);

username=$(tput setaf 64);
path=$(tput setaf 100);
branch=$(tput setaf 214);
gitinfo=$(tput setaf 208);

# Set the terminal title and prompt.
PS1="\[\033]0;\W\007\]"; # working directory base name
PS1+="\[${important}\]\[${username}\]\u\[${reset}\]"; # username (in vomit green)
PS1+="\[${normal}\] in "; # "in" word, in white
PS1+="\[${important}\]\[${path}\]\w\[${reset}\]"; # working directory full path
PS1+="\$(check_git \"\[${normal}\] on \[${branch}\]\" \"\[${gitinfo}\]\")"; # Git repository details
PS1+="\n";
PS1+="\[${reset}\]\$ \[${reset}\]"; # `$` (and reset color)
export PS1;

PS2="\[${yellow}\]→ \[${reset}\]";
export PS2;
