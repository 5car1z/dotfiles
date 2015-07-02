#!/bin/bash
############################
# install-dotfiles.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                   	                                  # dotfiles directory
olddir=~/dotfiles_old

vimdircol=~/.vim/colors
oldvimcoldir=~/dotfiles_old/.vim/colors
                                 					  # old dotfiles backup directory
dotfiles="bashrc bash_profile inputrc functions alias env vimrc"          # list of files/folders to symlink to homedir
vimfiles="desertink.vim molokai_dark.vim molokai.vim"

##########

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# create .vim folder in dotfiles_old
echo -n "Creating $oldvimcoldir for backup of any existing vim config files in ~/.vim/colors ..."
mkdir -p $oldvimcoldir
echo "done"

# create vim configuration folder in homedir 
echo -n "Creating vim colors configuration folder in ~ ..."
mkdir -p $vimdircol
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for dotfile in $dotfiles; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$dotfile ~/dotfiles_old/
    echo "Creating symlink to $dotfile in home directory."
    ln -s $dir/$dotfile ~/.$dotfile
done

# change to the vimfiles directory
echo -n "Changing to the $vimdircol directory ..."
cd $vimdircol
echo "done"

# move any existing vimfiles in ~/.vim folder to ~/dotfiles_old/.vim directory, then create symlinks from ~/.vim to any files in the ~/dotfiles/.vim directory, specified in $vimfiles
for vimfile in $vimfiles; do
    echo "Moving any existing vim color config files from ~/.vim/colors to $oldvimcoldir"
    mv ~/.vim/colors/$vimfile $oldvimcoldir
    echo "Creating symlink to $vimfile in home directory"
    ln -s $dir/.vim/colors/$vimfile $vimdircol
done
