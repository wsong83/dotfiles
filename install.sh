#!/usr/bash

cd ~

sudo apt-get install aptitude

sudo aptitude install emacs emacs-goodies-extra-el vim meld source-highlight openssh-server
sudo aptitude install texlive-extra-utils texlive-fonts-recommended texlive-latex-recommended
sudo aptitude install libboost-all-dev texinfo flex bison libgmp-dev libmpfr-dev libmpc-dev
sudo aptitude install csh lsb-core device-tree-compiler

mkdir bin
mkdir tools
mkdir proj

git clone https://github.com/wsong83/dotfiles.git ~/proj/
cp ~/proj/dotfiles/bash_env ./
cp ~/proj/dotfiles/emacs ./.emacs
cp -r ~/proj/dotfiles/bin/* ./bin/

