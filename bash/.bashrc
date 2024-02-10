#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR='vim'
export QT_QPA_PLATFORMTHEME='gtk2'
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
#export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
#venvwrap="virtualenvwrapper.sh"
#if [ $? -eq 0 ]; then
#    venvwrap=`/usr/bin/which $venvwrap`
#    source $venvwrap
#fi

# kdesrc-build #################################################################

## Add kdesrc-build to PATH
export PATH="/home/koitu/kde/src/kdesrc-build:$PATH"

## Autocomplete for kdesrc-run
function _comp_kdesrc_run
{
  local cur
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"

  # Complete only the first argument
  if [[ $COMP_CWORD != 1 ]]; then
    return 0
  fi

  # Retrieve build modules through kdesrc-run
  # If the exit status indicates failure, set the wordlist empty to avoid
  # unrelated messages.
  local modules
  if ! modules=$(kdesrc-run --list-installed);
  then
      modules=""
  fi

  # Return completions that match the current word
  COMPREPLY=( $(compgen -W "${modules}" -- "$cur") )

  return 0
}

## Register autocomplete function
complete -o nospace -F _comp_kdesrc_run kdesrc-run
################################################################################
