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

# Create symlinks to dotfiles

echo "################################################################"
echo "#################     Creating symlinks   ######################"
echo "################################################################"

mv ~/.config/openbox ~/.config/openbox.old
ln -s openbox ~/.config/

echo "################################################################"
echo "###################    Symlinks created   ######################"
echo "################################################################"

