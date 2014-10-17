#/bin/sh

git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
homeshick clone --batch https://github.com/robbyrussell/oh-my-zsh
homeshick clone git@github.com:phrodo00/dotfiles
vim +NewBundleInstall +qall
