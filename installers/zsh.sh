#!/bin/
sh

sudo apt install zsh

chsh -s $(which zsh)

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
