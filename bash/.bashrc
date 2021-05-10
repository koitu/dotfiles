#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR='vim'
alias ls='ls --color=auto'
alias ssh='TERM=xterm-color ssh'
alias sleeptime='sleep 0.5 && xset dpms force off'

# turn off system beep in console:
xset b off
xset b 0 0 0

PS1='[\u@\h \W]\$ '

# add .local/bin to executable path
export PATH="$HOME/.local/bin:$PATH"

# load virtualenvwrapper for python (after custom PATHs)
venvwrap="virtualenvwrapper.sh"
if [ $? -eq 0 ]; then
    venvwrap=`/usr/bin/which $venvwrap`
    source $venvwrap
fi
