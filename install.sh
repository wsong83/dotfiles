#!/usr/bash

# this script is partially suited for Ubuntu-16.04 and still OK for Ubuntu-22.04

sudo apt-get update
sudo apt-get -y install aptitude curl
sudo aptitude -y install emacs emacs-goodies-extra-el vim meld source-highlight screen xterm git plocate
sudo aptitude -y install openssh-server net-tools htop nethogs sshfs nfs-client mutt sendmail lvm2
sudo aptitude -y install texlive-extra-utils texlive-fonts-recommended texlive-latex-recommended texlive-science texlive-latex-extra texlive-fonts-extra
sudo aptitude -y install texlive-science texlive-latex-extra gnuplot xfonts-100dpi xfonts-75dpi t1-xfree86-nonfree ttf-xfree86-nonfree
sudo aptitude -y install libboost-all-dev texinfo flex bison libgmp-dev libmpfr-dev libmpc-dev zlib1g-dev libssl-dev
sudo aptitude -y install autotools-dev automake libreadline-dev libelf-dev swig gawk
sudo aptitude -y install csh lsb-core device-tree-compiler ncurses-dev
sudo aptitude -y install unrar chrpath repo python-pip
sudo aptitude -y install fail2ban
sudo aptitude -y install scala-mode-el
sudo aptitude -y upgrade

mkdir -p ~/bin
mkdir -p ~/tools
mkdir -p ~/proj

cp bash_env ~/
cp emacs ~/.emacs
cp gitconfig ~/.gitconfig
mkdir -p ~/.sbt
cp sbt ~/.sbt/repositories
cp -r bin/* ~/bin/

