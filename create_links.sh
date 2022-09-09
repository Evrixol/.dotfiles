#!/bin/bash

#   This file creates symbolic links in the users (assumed) home directory (referencing env variable
# $HOME) to link files such as .bashrc, .bash_aliases, .profile, and other such so-called "dot-
# files" located in the `~/.dotfiles` directory.

# Known OS 'values'.
## linux-gnu
## msys
## cygwin

linkFiles=(".bashrc" ".bash_aliases" ".vimrc" ".gitconfig" ".vim/" ".profile")
fileActual=("bashrc" "bash_aliases" "vimrc" "gitconfig" "vim/" "profile")

case "$OSTYPE" in
	"linux-gnu")
		for i in ${!fileActual[@]}
		do
			ln -s "${HOME}/.dotfiles/${fileActual[$i]}" "${HOME}/${linkFiles[$i]}"
		done
		;;
	"msys" | "cygwin" )
		for i in ${!fileActual[@]}
		do
			if [[ "$(echo \"${fileActual[$i]}\" | grep -e='\w+\/' )" ]];
			then
				echo "Encountered directory."
				cmd "" /c "mklink \/d %%HOME\\$(${linkFiles[$i] | sed 's/.$//'})\\ %HOME%\\.dotfiles\\${fileActual[$i] | sed 's/.$//'}"
			else
				cmd /c "mklink %HOME%\\${linkFiles[$i]} %HOME%\\.dotfiles\\${fileActual[$i]}"
			fi
		done
		;;
	*)
		echo "The operating system type is either unknown or the environment variable \"\$OSTYPE\" is empty."
		echo "Forcefully exiting script.";
		exit
		;;
esac

