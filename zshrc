. ~/.zsh/zle
. ~/.zsh/style
. ~/.zsh/opts
. ~/.zsh/export
. ~/.zsh/alias
. ~/.zsh/prompt

grab() {
	        sudo chown -R ${USER} ${1:-.}
}

pacs () {
        echo -e "$(pacman -Ss $@ | sed \
        -e 's#current/.*#\\033[1;31m&\\033[0;37m#g' \
        -e 's#extra/.*#\\033[0;32m&\\033[0;37m#g' \
        -e 's#community/.*#\\033[1;35m&\\033[0;37m#g' \
        -e 's#^.*/.* [0-9].*#\\033[0;36m&\\033[0;37m#g' )"
}

extract () {
        if [ -f $1 ] ; then
                case $1 in
                        *.tar.bz2)      tar xvjf $1     ;;
                        *.tar.gz)       tar xvzf $1     ;;
                        *.bz2)          bunzip2 $1      ;;
                        *.rar)          unrar x $1      ;;
                        *.gz)           gunzip $1       ;;
                        *.tar)          tar xvf $1      ;;
                        *.tbz2)         tar xvjf $1     ;;
                        *.tgz)          tar xvzf $1     ;;
                        *.zip)          unzip $1        ;;
                        *.Z)            uncompress $1   ;;

                        *)              echo "'$1' cannot be extracted via extract()" ;;
                esac
        else
                echo "'$1' is not a valid file"
        fi
}
