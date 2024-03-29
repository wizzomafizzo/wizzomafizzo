[ -z "$PS1" ] && return

source /etc/profile

export HISTCONTROL=ignoredups
export COLORFGBG='default;default'

PATH=$HOME/bin:$PATH

shopt -s checkwinsize

#PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '

#if [ -f ~/scripts/colorprompt.sh ]; then
#	source ~/scripts/colorprompt.sh
#fi

smiley() {
	err=$?
	if [ $err == 0 ]
	then echo "=)"
	else echo "=("
	fi
}

#PROMPT_COMMAND=""
#function dan {
#local cur_tty=$(temp=$(tty) ; echo ${temp:5});
#PS1="\!,$cur_tty,\$?\$ "
#}

function promptcmd {
	local cur_tty=$(temp=$(tty) ; echo ${temp:5});
	PS1="\n\[\033[1;30m\]{ \[\033[01;34m\]\w \[\033[1;30m\]}\n\[\033[1;30m\]{ \[\033[01;34m\]\u@\h \[\033[1;30m\]}\[\033[0;30m\] { \[\033[01;34m\]\!,$cur_tty,\$? \[\033[1;30m\]}\[\033[01;34m\] >> \$\[\033[00m\] "
	PS2="\[\033[01;34m\]>> \[\033[00m\]"
}

#function promptcmd {
#	PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] "
#}

#PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] "

PROMPT_COMMAND="promptcmd"

#case ${TERM} in
#	xterm*|rxvt*|Eterm|aterm|kterm|gnome)
#		PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'
#		;;
#	screen)
#		PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\033\\"'
#		;;
#esac

#PS1="\n\[\033[01;32m\]\u\[\033[01;34m\]@\[\033[01;32m\]\h\[\033[01;34m\] \w >>\n\[\033[01;34m\][\D{%H}:\D{%M}:\D{%S}] $(smiley) \$\[\033[00m\] "

#set -o vi

extract () {
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)	tar xvjf $1	;;
			*.tar.gz)	tar xvzf $1	;;
			*.bz2)		bunzip2 $1	;;
			*.rar)		unrar x $1	;;
			*.gz)		gunzip $1	;;
			*.tar)		tar xvf $1	;;
			*.tbz2)		tar xvjf $1	;;
			*.tgz)		tar xvzf $1	;;
			*.zip)		unzip $1	;;
			*.Z)		uncompress $1	;;
			
			*)		echo "'$1' cannot be extracted via extract()" ;;
		esac
	else
		echo "'$1' is not a valid file"
	fi
}

# I think this is enabled by default...
#if [ -f /etc/bash_completion ]; then
#	. /etc/bash_completion
#fi

pacs () {
	echo -e "$(pacman -Ss $@ | sed \
	-e 's#current/.*#\\033[1;31m&\\033[0;37m#g' \
	-e 's#extra/.*#\\033[0;32m&\\033[0;37m#g' \
	-e 's#community/.*#\\033[1;35m&\\033[0;37m#g' \
	-e 's#^.*/.* [0-9].*#\\033[0;36m&\\033[0;37m#g' )"
}

grab() {
	sudo chown -R ${USER} ${1:-.}
}

#export PERL5LIB="$HOME/perl"

alias ls='ls -h --color=auto'
alias grep='grep --color=auto'
alias pacman='sudo pacman'
alias svim='sudo vim'
alias update='sudo pacman -Syu'
alias ..='cd ..'
alias refresher="source $HOME/.bashrc"
alias x='exit'
alias h='su -c "hibernate"'
alias nautilus='nautilus --no-desktop'
alias cdin='mount /mnt/cdrom'
alias cdout='umount /mnt/cdrom'
alias rm='rm -i'
alias cp='cp'
alias mv='mv'

export EDITOR=vim
export BROWSER=firefox
