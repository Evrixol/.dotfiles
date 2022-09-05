# Bash Aliases.

# In the case that the bash session is invocated under a Windows environment in an emulation shell.
if [ -f /proc/version ]; then
	out=`cat /proc/version`


fi;

alias ls="/bin/ls --color=auto --almost-all"

