#!/bin/bash

# install dotfile dependencies for Arch Linux based systems. 

echo -n "Installing Pacman packages..."
sudo pacman -Syy && sudo pacman -Syu
sudo pacman -S curl cowsay fortune-mod jq
echo -n "done"

echo -n "Installing pip and cheat..."
wget -v https://bootstrap.pypa.io/get-pip.py -P ~
python ~/get-pip.py 
sudo pip install cheat 
echo -n "done"


