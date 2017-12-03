#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# powerline

if [ -f ~/.bash_powerline.sh  ]; then
    . ~/.bash_powerline.sh
fi
