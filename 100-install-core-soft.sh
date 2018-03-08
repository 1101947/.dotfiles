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
echo "######################  Installing soft  #######################"
echo "################################################################"

sudo pacman -Sy firefox terminator geany emacs pcmanfm --noconfirm --needed

echo "################################################################"
echo "########################    Ready    ###########################"
echo "################################################################"


# Create symlinks to dotfiles

echo "################################################################"
echo "############## Create symlinks to configurations  ##############"
echo "################################################################"

ln -s ~/.dotfiles/emacs/.emacs.d ~/.emacs.d

echo "################################################################"
echo "###################    Symlinks created   ######################"
echo "################################################################"
