#!/usr/bash

sudo apt-get install aptitude

sudo aptitude -y install emacs emacs-goodies-extra-el vim meld source-highlight openssh-server net-tools
sudo aptitude -y install texlive-extra-utils texlive-fonts-recommended texlive-latex-recommended
sudo aptitude -y install texlive-science texlive-latex-extra gnuplot xfonts-100dpi xfonts-75dpi t1-xfree86-nonfree ttf-xfree86-nonfree
sudo aptitude -y install libboost-all-dev texinfo flex bison libgmp-dev libmpfr-dev libmpc-dev zlib1g-dev
sudo aptitude -y install autotools-dev automake libreadline-dev libelf-dev swig
sudo aptitude -y install csh lsb-core device-tree-compiler ncurses-dev
sudo aptitude -y install unrar wine chrpath repo python-pip

mkdir -p ~/bin
mkdir -p ~/tools
mkdir -p ~/proj

cp bash_env ~/
cp emacs ~/.emacs
cp sbt ~/.sbt/repositories
cp -r bin/* ~/bin/

