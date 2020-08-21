#!/usr/bash

sudo apt-get update
sudo apt-get -y install aptitude
sudo add-apt-repository ppa:apt-fast/stable
sudo apt-get install apt-fast

sudo apt-fast -y install emacs emacs-goodies-extra-el vim meld source-highlight screen xterm
sudo apt-fast -y install openssh-server net-tools htop nethogs sshfs nfs-client mutt sendmail
sudo apt-fast -y install texlive-extra-utils texlive-fonts-recommended texlive-latex-recommended
sudo apt-fast -y install texlive-science texlive-latex-extra gnuplot xfonts-100dpi xfonts-75dpi t1-xfree86-nonfree ttf-xfree86-nonfree
sudo apt-fast -y install libboost-all-dev texinfo flex bison libgmp-dev libmpfr-dev libmpc-dev zlib1g-dev libssl-dev
sudo apt-fast -y install autotools-dev automake libreadline-dev libelf-dev swig gawk
sudo apt-fast -y install csh lsb-core device-tree-compiler ncurses-dev
sudo apt-fast -y install unrar chrpath repo python-pip
sudo apt-fast -y install r-base-dev ess
sudo apt-fast -y install fail2ban

mkdir -p ~/bin
mkdir -p ~/tools
mkdir -p ~/proj

cp bash_env ~/
cp emacs ~/.emacs
mkdir -p ~/.sbt
cp sbt ~/.sbt/repositories
cp -r bin/* ~/bin/

