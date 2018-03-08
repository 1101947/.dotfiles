#!/bin/bash
set -e
#======================================================================================
# Author    : 1101947
# Date      : 2018-03-25                               
# Based on  : Erik Dubois at http://www.erikdubois.be
# License   : Distributed under the terms of GNU GPL version 2 or later
# 
# AS ALLWAYS, KNOW WHAT YOU ARE DOING.
#======================================================================================


# Install minimal video support for intel cards.
# Replace xf86-video-intel with xf86-video-ati for ati cards or xf86-video-nouveau for nvidia

echo "################################################################"
echo "##################  Installing video support  ##################"
echo "################################################################"

sudo pacman -Sy
sudo pacman -S xorg --noconfirm --needed
sudo pacman -S xf86-video-intel --noconfirm --needed
sudo pacman -S mesa --noconfirm --needed

echo "################################################################"
echo "###################    Video installed    ######################"
echo "################################################################"


# Install minimal audio support

echo "################################################################"
echo "##################  Installing audio support  ##################"
echo "################################################################"

sudo pacman -S alsa-firmware alsa-plugins alsa-utils --noconfirm --needed
sudo pacman -S pavucontrol pulseaudio pulseaudio-alsa --noconfirm --needed

echo "################################################################"
echo "###################    Audio installed    ######################"
echo "################################################################"


# Install touchpad support. Alternativly you can use xf86-input-libinput

echo "################################################################"
echo "################  Installing touchpad support  #################"
echo "################################################################"

sudo pacman -S xf86-input-synaptics --noconfirm --needed

echo "################################################################"
echo "##################    Touchpad installed   #####################"
echo "################################################################"


# Install network management software. Alternativly you can use network-manager for this purpose. 
# It's important do disable previously enabled network services (dhcpcd in my case) to avoid conflicts. 

echo "################################################################"
echo "#########  Installing network management software  #############"
echo "################################################################"

sudo pacman -S wicd wicd-gtk --noconfirm --needed
sudo systemctl stop dhcpcd
sudo systemctl disable dhcpcd
sudo systemctl enable wicd.service
sudo systemctl start wicd.service

echo "################################################################"
echo "#########   Network management software installed  #############"
echo "################################################################"

