#!/bin/bash

# install dotfile dependencies for Debian / Ubuntu based systems. 

echo -n "Installing Apt packages..."
sudo apt-get -y update && sudo apt-get -y upgrade 
sudo apt-get install stow curl cowsay fortune-mod jq vim tmux ranger
echo -n "done"

echo -n "Installing pip and cheat..."
wget -v https://bootstrap.pypa.io/get-pip.py -P ~
sudo python ~/get-pip.py 
sudo pip install cheat 
echo -n "done"


