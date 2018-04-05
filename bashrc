# x relative settings
#bash ~/.xinitrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias tmux='tmux -2'
alias ls='ls --color=auto'

export TERM=xterm-256color
PS1='[\u@\h \W]\$ '
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

EDITOR=/usr/bin/vim
VISUAL=/usr/bin/vim
