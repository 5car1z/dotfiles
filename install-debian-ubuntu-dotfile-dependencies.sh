#!/bin/bash

# install dotfile dependencies for Debian / Ubuntu based systems. 

echo -n "Installing Apt packages...\n"
sudo apt-get -y update && sudo apt-get -y upgrade 
sudo apt-get install stow curl cowsay fortune-mod jq vim tmux ranger htop i3 
echo -n "Done"

echo -n "Installing pip and cheat... \n"
wget -v https://bootstrap.pypa.io/get-pip.py -P ~
sudo python ~/get-pip.py 
sudo pip install cheat virtualenv
echo -n "Done"


