#!/bin/bash
set -e
#======================================================================================
# Author    : 1101947
# Date      : 2018-04-08                               
# Based on  : Erik Dubois at http://www.erikdubois.be
# License   : Distributed under the terms of GNU GPL version 2 or later
# 
# AS ALLWAYS, KNOW WHAT YOU ARE DOING.
#======================================================================================


# Install minimal soft set (browser, terminal, text editor, file manager).

echo "################################################################"
echo "#########################     Installing soft      ##########################"
echo "################################################################"

sudo pacman -Sy firefox xfce4-terminal geany emacs pcmanfm --noconfirm --needed

echo "################################################################"
echo "###########################    Ready     ##############################"
echo "################################################################"

# Install Xarchiver and wide formats support.

echo "################################################################"
echo "#########################     Installing soft      ##########################"
echo "################################################################"

sudo pacman -S xarchiver cpio lha lrzip lzip lzop p7zip unarj unrar unzip zip zstd  --noconfirm --needed

echo "################################################################"
echo "###########################    Ready     ##############################"
echo "################################################################"

# Create symlinks to dotfiles

echo "################################################################"
echo "##################       Create symlinks to configurations        ##################"
echo "################################################################"

ln -s ~/.dotfiles/emacs/.emacs.d ~/.emacs.d

echo "################################################################"
echo "######################        Symlinks created         #########################"
echo "################################################################"
