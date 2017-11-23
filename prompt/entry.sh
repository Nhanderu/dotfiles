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

# Resets colors.
tput sgr0; 

reset=$(tput sgr0);
important=$(tput bold);
normal=$(tput setaf 15);

username=$(tput setaf 64);
path=$(tput setaf 100);
branch=$(tput setaf 214);
gitinfo=$(tput setaf 208);

# Sets the terminal title and prompt.
PS1="\n"

# Working directory base name.
PS1+="\[\033]0;\W\007\]";

# Username (in normal green).
PS1+="\[${important}\]\[${username}\]\u\[${reset}\]";

# "in" word (in white).
PS1+="\[${normal}\] in ";

# Working directory full path (in vomit green).
PS1+="\[${important}\]\[${path}\]\w\[${reset}\]";

# Git repository details (in green/yellow).
PS1+="\$(check_git \"\[${normal}\] on \[${branch}\]\" \"\[${gitinfo}\]\")";

# Line break.
PS1+="\n";

# Command line.
PS1+="\[${reset}\]→ \[${reset}\]";
PS2="\[${reset}\]→ \[${reset}\]";

export PS1;
export PS2;
