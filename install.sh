#!/usr/bash

cd ~

sudo apt-get install aptitude

sudo aptitude -y install emacs emacs-goodies-extra-el vim meld source-highlight openssh-server
sudo aptitude -y install texlive-extra-utils texlive-fonts-recommended texlive-latex-recommended
sudo aptitude -y install libboost-all-dev texinfo flex bison libgmp-dev libmpfr-dev libmpc-dev zlib1g-dev
sudo aptitude -y install csh lsb-core device-tree-compiler
sudo aptitude -y install unrar wine

mkdir bin
mkdir tools
mkdir proj

git clone https://github.com/wsong83/dotfiles.git ~/proj/
cp ~/proj/dotfiles/bash_env ./
cp ~/proj/dotfiles/emacs ./.emacs
cp -r ~/proj/dotfiles/bin/* ./bin/

