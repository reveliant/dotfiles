#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
	source /etc/profile.d/vte.sh
fi

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

PS_ARROW=$'\ue0b0'
PS_EMPTYARROW=$'\ue0b1'
PS_KATAKANA=$'\u30ec\u30df'

PS_HOST="\[\e[30;43m\]"
PS_USER="${PS_EMPTYARROW}"
PS_PATH="\[\e[33;47m\]${PS_ARROW}\[\e[30m\]"
PS_PROMPT="\[\e[31m\]"
PS_END="\[\e[0;37m\]${PS_ARROW}\[\e[0m\]"

export PS1="${PS_HOST} \h ${PS_USER} \u ${PS_PATH} \w ${PS_END} "
export LESSCHARSET=utf-8
export EDITOR='/usr/bin/vim'
export VISUAL='/usr/bin/vim'
alias ls='ls --color=auto'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

