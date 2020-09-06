#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\e[0;33m\][\u@\h \W]\[\e[0m\]\$ '
export LESSCHARSET=utf-8
export EDITOR='/usr/bin/vim'
export VISUAL='/usr/bin/vim'
alias ls='ls --color=auto'
