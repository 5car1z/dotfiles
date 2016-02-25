#!/bin/bash

# install dotfile dependencies for Arch Linux based systems. 

echo -n "Installing Apt packages..."
sudo apt-get -y update && sudo apt-get -y upgrade 
sudo apt-get install curl cowsay fortune-mod jq
echo -n "done"

echo -n "Installing pip and cheat..."
wget -v https://bootstrap.pypa.io/get-pip.py -P ~
python ~/get-pip.py 
pip install cheat 
echo -n "done"


