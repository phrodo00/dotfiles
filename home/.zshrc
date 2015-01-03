##############################################################################
# Prezto
##############################################################################
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

##############################################################################
# Homeshick
##############################################################################

if [[ -e "$HOME/.homesick/repos/homeshick/homeshick.sh" ]]; then
    source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fi

##############################################################################
# RVM
##############################################################################

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

##############################################################################
# Node
##############################################################################

NPM_PACKAGES="$HOME/.npm-packages"
PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH  # delete if you already modified MANPATH elsewhere in your configuration
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
# Tell Node about these packages
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"

##############################################################################
# Aliases
##############################################################################

alias Suy='sudo pacman -Suy'
alias b=popd
alias o='xdg-open'
alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias l='ls -lh --color=auto'
alias la='ls -A --color=auto'
alias rm='rm -r'
alias rf='rm -rf'
alias cp='cp -r'
alias scp='scp -r'
alias ZQ=exit
alias :q=exit
alias o.='xdg-open .'
alias zshrc='gvim ~/.zshrc'
alias Suy='pacaur -Suy'
alias pacaur='LC_ALL=en_US.utf8 pacaur'
alias bower='noglob bower'
alias youtube-dl='noglob youtube-dl'

##############################################################################
# ENVVARS
##############################################################################

export PAGER=most
# go
export GOPATH=$HOME/go
export PATH=$PATH:$HOME/go/bin
# full color vim in gnome-terminal.
if [[ $COLORTERM == 'gnome-terminal' ]];then
  export TERM=xterm-256color
fi

