#!/usr/bash

sudo add-apt-repository -y ppa:apt-fast/stable
sudo apt-get install apt-fast

sudo dpkg-reconfigure dash
sudo apt-fast -y install barrier ccrypt libfuse2
sudo apt-fast -y install inkscape libreoffice
sudo apt-fast -y install texlive-xetex latex-cjk-chinese texlive-lang-cjk
sudo apt-fast -y install gnucash
sudo apt-fast -y install r-base r-cran-dplyr r-cran-ggridges
sudo apt-fast -y install gnome-shell-extension-manager

sudo cp 99timeout /etc/apt/apt.conf.d/
sudo chown root:root /etc/apt/apt.conf.d/99timeout
