#!/usr/bash

# this script is partially suited for Ubuntu-16.04 and still OK for Ubuntu-22.04

sudo apt-get update

sudo apt-get -y install aptitude curl
# for apt-fast
sudo add-apt-repository -y ppa:apt-fast/stable
# for python 3.6+
sudo add-apt-repository -y ppa:deadsnakes/ppa
# for git 2.9+
sudo add-apt-repository -y ppa:git-core/ppa
# for gcc-6+
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test

sudo apt-get update
sudo apt-get install apt-fast

sudo apt-fast -y install emacs emacs-goodies-extra-el vim meld source-highlight screen xterm git plocate
sudo apt-fast -y install openssh-server net-tools htop nethogs sshfs nfs-client mutt sendmail lvm2
sudo apt-fast -y install texlive-extra-utils texlive-fonts-recommended texlive-latex-recommended
sudo apt-fast -y install texlive-science texlive-latex-extra gnuplot xfonts-100dpi xfonts-75dpi t1-xfree86-nonfree ttf-xfree86-nonfree
sudo apt-fast -y install libboost-all-dev texinfo flex bison libgmp-dev libmpfr-dev libmpc-dev zlib1g-dev libssl-dev
sudo apt-fast -y install autotools-dev automake libreadline-dev libelf-dev swig gawk
sudo apt-fast -y install csh lsb-core device-tree-compiler ncurses-dev
sudo apt-fast -y install unrar chrpath repo python-pip
sudo apt-fast -y install fail2ban
sudo apt-fast -y install scala-mode-el
sudo apt-fast -y upgrade

mkdir -p ~/bin
mkdir -p ~/tools
mkdir -p ~/proj

cp bash_env ~/
cp emacs ~/.emacs
cp gitconfig ~/.gitconfig
mkdir -p ~/.sbt
cp sbt ~/.sbt/repositories
cp -r bin/* ~/bin/

