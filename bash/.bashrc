#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
	source /etc/profile.d/vte.sh
fi

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
