# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi


export SHELL="$HOME/bin/zsh"
exec $HOME/bin/zsh -l
