#!/usr/bash

# for apt-fast
sudo add-apt-repository -y ppa:apt-fast/stable
sudo apt-get install apt-fast

sudo aptitude -y install barrier inkscape
sudo aptitude -y install r-base r-cran-dplyr r-cran-ggridges
sudo aptitude -y install gnome-shell-extension-manager
sudo aptitude -y install texlive-xetex latex-cjk-chinese texlive-lang-cjk
