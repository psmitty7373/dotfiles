#!/usr/bin/env bash

[ -z "$PS1" ] && return

HISTCONTROL=ignoreboth
HISTSIZE=100000
HISTFILESIZE=2000000
HISTIGNORE='&:clear:ls:cd:[bf]g:exit:[ t\]*'
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
force_color_prompt=yes

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

shopt -s checkwinsize
shopt -s cdspell
shopt -s dotglob
shopt -s nocaseglob

LS_COLORS=$LS_COLORS:'di=0;35:'
export LS_COLORS

alias ls="/bin/ls --color=always"
alias ll="ls -lah"
