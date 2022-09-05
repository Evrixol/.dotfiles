#!/bin/bash

#   This file creates symbolic links in the users (assumed) home directory (referencing env variable
# $HOME) to link files such as .bashrc, .bash_aliases, .profile, and other such so-called "dot-
# files" located in the `~/.dotfiles` directory.

# Known OS 'values'.
## linux-gnu
## msys
## cygwin

linkFiles=(".bashrc" ".bash_aliases" ".vimrc" ".gitconfig" ".vim")
fileActual=("bashrc" "bash_aliases" "vimrc" "git_config" "vim")

case "$OSTYPE" in
	"linux-gnu")
		for i in ${!fileActual[@]}
		do
			ln -s "${HOME}/.dotfiles/${fileActual[$i]}" "${HOME}/${linkFiles[$i]}"
		done;;
	*) 
		echo "The operating system type is either unknown or the environment variable \"\$OSTYPE\" is empty."
		echo "Forcefully exiting script.";
		exit;;
esac

