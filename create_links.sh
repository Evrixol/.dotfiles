#!/bin/sh

#   This file creates symbolic links in the users (assumed) home directory (referencing env variable
# $HOME) to link files such as .bashrc, .bash_aliases, .profile, and other such so-called "dot-
# files" located in the `~/.dotfiles` directory.

# Known OS 'values'.
## linux-gnu
## msys
## cygwin
## freebsd
## darwin
## win32 (assumed)

toLink=(".bashrc", ".bash_aliases", ".vimrc", ".vim", ".gitconfig")
linkTo=("bashrc", "bash_aliases", "vimrc", "vim", "git_config")

case "$OSTYPE" in
	"linux-gnu")
		for i in $toLink
		do
			ln -s "~/.dotfiles/${linkTo[$i]}" "~/${toLink[$i]}"
		done;;
	*) 
		echo "The operating system type is either unknown or the environment variable \"\$OSTYPE\" is empty."
		echo "Forcefully exiting script.";
		exit;;
esac


