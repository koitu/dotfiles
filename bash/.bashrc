#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR='vim'
alias ls='ls --color=auto'
alias ssh='TERM=xterm-color ssh'

# turn off system beep in console:
xset b off
xset b 0 0 0

PS1='[\u@\h \W]\$ '
