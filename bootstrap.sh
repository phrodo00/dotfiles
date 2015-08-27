#/bin/sh

git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
homeshick clone --batch https://github.com/sorin-ionescu/prezto.git
homeshick clone git@github.com:phrodo00/dotfiles
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
