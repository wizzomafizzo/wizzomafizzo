set show-all-if-ambiguous on
set match-hidden-files off
set expand-tilde off
set print-completion-horizontally on
set completion-query-item 300
set visible-stats on

bindkey "\e[1~" beginning-of-line
bindkey "\e[7~" beginning-of-line
bindkey "\e[8~" end-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[3~" delete-char

bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
