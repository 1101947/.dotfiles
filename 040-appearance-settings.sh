#!/bin/bash
set -e
#======================================================================================
# Author    : 1101947
# Date      : 2018-04-02                               
# Based on  : Erik Dubois at http://www.erikdubois.be
# License   : Distributed under the terms of GNU GPL version 2 or later
# 
# AS ALLWAYS, KNOW WHAT YOU ARE DOING.
#======================================================================================



# Copy themes and icons to system folders

echo "################################################################"
echo "######### Copying themes and icons to system folders  ##########"
echo "################################################################"

sudo cp -r ~/.dotfiles/appearance/themes/* /usr/share/themes
sudo cp -r ~/.dotfiles/appearance/icons/* /usr/share/icons

echo "################################################################"
echo "#################    Themes and icons copyed    ################"
echo "################################################################"


# Create symlinks to dotfiles

echo "################################################################"
echo "#################     Creating symlinks   ######################"
echo "################################################################"

ln -s ~/.dotfiles/appearance/.gtkrc-2.0 ~/.gtkrc-2.0
ln -s ~/.dotfiles/appearance/gtk-3.0/ ~/.config/gtk-3.0
ln -s ~/.dotfiles/appearance/themes/ ~/.themes
ln -s ~/.dotfiles/appearance/icons/ ~/.icons

echo "################################################################"
echo "###################    Symlinks created   ######################"
echo "################################################################"
