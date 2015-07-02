#!/bin/bash
############################
# install-dotfiles.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dotfilesdir=~/dotfiles                   	                          # dotfiles directory

vimcoldir=~/.vim/colors                                                   # vim color schemes directory
cheatsheetdir=~/.cheat                                                    # cheat sheet storage directory
                                 					  
dotfiles="bashrc bash_profile inputrc functions alias env vimrc"          # list of files to symlink to home directory
vimfiles="desertink.vim molokai_dark.vim molokai.vim"                     # list of vim configuration files to symlink to home directory
cheatsheets="ping"

##########

# create .vim configuration folder in home directory
echo -n "Creating vim colors configuration folder in ~ ..."
mkdir -p $vimcoldir
echo "done"

# create .cheat storage folder in home directory
echo -n "Creating cheat storage folder in ~ ..."
mkdir -p $cheatsheetdir
echo "done"

# Create symlinks from ~ to any files in the ~/dotfiles directory specified from the $dotfiles variable
for dotfile in $dotfiles; do
    echo "Creating symlink to $dotfile in home directory."
    ln -s -f $dotfilesdir/$dotfile ~/.$dotfile
done

# Create symlinks from ~/.vim/colors directory to files in the dotfiles/.vim/colors directory, specified from $vimfiles variable
for vimfile in $vimfiles; do
    echo "Creating symlink to $vimfile in ~/.vim/colors directory"
    ln -s -f $dotfilesdir/.vim/colors/$vimfile $vimcoldir
done

# Create symlinks from ~/.vim/colors directory to files in the dotfiles/.vim/colors directory, specified from $vimfiles variable
for cheatsheet in $cheatsheets; do
    echo "Creating symlink to $cheatsheet in ~/.cheat directory"
    ln -s -f $dotfilesdir/.cheat/$cheatsheet $cheatsheetdir
done

