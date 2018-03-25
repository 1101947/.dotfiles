#!/bin/bash
set -e
#======================================================================================
# Author    : 1101947
# Date      : 2018-03-27                               
# Based on  : Erik Dubois at http://www.erikdubois.be
# License   : Distributed under the terms of GNU GPL version 2 or later
# 
# AS ALLWAYS, KNOW WHAT YOU ARE DOING.
#======================================================================================


# Install minimal soft set (browser, terminal, text editor, file manager).

echo "################################################################"
echo "######################  Installing soft  #######################"
echo "################################################################"

sudo pacman -S firefox xfce4-terminal geany pcmanfm --noconfirm --needed

echo "################################################################"
echo "########################    Ready    ###########################"
echo "################################################################"


