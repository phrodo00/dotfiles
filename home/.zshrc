###########################################################################
# oh-my-zsh
###########################################################################

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sorin"
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git cp python rails python rsync screen systemd pip archlinux
         coffee django gnu-utils history-substring-search npm rake vundle
         virtualenvwrapper gem)

###########################################################################
# Exports
###########################################################################

export EDITOR=vim
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.gem/ruby/1.9.1/bin:$PATH
export PAGER=most
export GOPATH=$HOME/go
export PATH=$PATH:$HOME/go/bin
if [[ $COLORTERM == 'gnome-terminal' ]];then
  export TERM=xterm-256color
fi

###########################################################################
# Aliases
###########################################################################

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

###########################################################################
# RVM
###########################################################################

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

###########################################################################
# Node
###########################################################################

NPM_PACKAGES="$HOME/.npm-packages"
PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH  # delete if you already modified MANPATH elsewhere in your configuration
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
# Tell Node about these packages
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"

###########################################################################
# homeshick
###########################################################################

if [[ -e "$HOME/.homesick/repos/homeshick/homeshick.sh" ]]; then
    source "$HOME/.homesick/repos/homeshick/homeshick.sh"
fi

###########################################################################

source $ZSH/oh-my-zsh.sh

