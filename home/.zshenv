#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

if which most > /dev/null; then
    export PAGER=most
fi
# go
export GOPATH=$HOME/go
export PATH=$PATH:$HOME/go/bin
# full color vim in gnome-terminal.
if [[ $COLORTERM == 'gnome-terminal' ]];then
  export TERM=xterm-256color
fi
if which vim > /dev/null; then
    export EDITOR=vim
    export VISUAL=vim
else
    export EDITOR=vi
    export VISUAL=vi
fi
