#!/bin/bash

# install dotfile dependencies for Debian / Ubuntu based systems. 

echo -n "Installing Apt packages...\n"
sudo apt-get -y update && sudo apt-get -y upgrade 
sudo apt-get install stow curl cowsay fortune-mod jq vim mpv tmux ranger htop i3 
echo -n "Done.\n"

echo -n "Installing pip and cheat... \n"
wget -v https://bootstrap.pypa.io/get-pip.py -P ~
sudo python ~/get-pip.py 
sudo pip install cheat virtualenv
rm ~/get-pip.py
echo -n "Done.\n"

echo -n "Copying Bash completion scripts to /etc/bash_completion.d system directory.\n"
sudo cp completions/* /etc/bash_completion.d/
echo -n "Done."
