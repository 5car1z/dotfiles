#!/bin/bash

# install dotfile dependencies for Arch Linux based systems. 

echo -n "Installing Pacman packages...\n"
sudo pacman -Syy && sudo pacman -Syu
sudo pacman -S stow curl cowsay fortune-mod jq vim mpv jack2 compton tmux ranger htop 
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
