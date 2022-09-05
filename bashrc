# ~/.bashrc: executed by bash(1) for interactive shells.
# In the case of the file being located under a ~/.dotfiles directory, a symbolic link must be made in the home
#   directory pointing towards this file.
# See `man bash(1)` for more information.

# Invocation options.
## If shell has been invoked as a non-interactive instance, do not configure the instance. (Exit .bashrc config.)
[[ "$-" != *i* ]] && return

# Shell Options
## Use case-insensitive filename globbing
shopt -s nocaseglob

# History options.
## Don't put duplicate lines in the history.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups

# Alias sourcing and configuration.
## Use file `~/.bash_aliases`, if it exists. 
if [ -f "${HOME}/.bash_aliases" ]; then
   source "${HOME}/.bash_aliases"
fi

# Function sourcing and configuration.
## Use `~/.bash_functions`, if it exists. 
if [ -f "${HOME}/.bash_functions" ]; then
  source "${HOME}/.bash_functions"
fi

force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac
