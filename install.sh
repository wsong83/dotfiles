#!/usr/bash

cd ~

sudo apt-get install aptitude

sudo aptitude -y install emacs emacs-goodies-extra-el vim meld source-highlight openssh-server
sudo aptitude -y install texlive-extra-utils texlive-fonts-recommended texlive-latex-recommended
sudo aptitude -y install libboost-all-dev texinfo flex bison libgmp-dev libmpfr-dev libmpc-dev zlib1g-dev
sudo aptitude -y autotools-dev automake
sudo aptitude -y install csh lsb-core device-tree-compiler ncurses-dev
sudo aptitude -y install unrar wine chrpath repo

mkdir bin
mkdir tools
mkdir proj

cp bash_env ~/
cp emacs ~/.emacs
cp sbt ~/.sbt/repositories
cp -r bin/* ~/bin/

