#!/bin/bash
set -e
#                                       
#
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
#   This script was created by combination of EricDubois scripts from 
#   https://github.com/erikdubois/LinuxMint182i3
#
##################################################################################################################

echo "#########################################"
echo "dependencies for i3 with gaps"
echo "#########################################"


# script 110
sudo apt-get install -y autoconf
sudo apt-get install -y automake
sudo apt-get install -y build-essential
sudo apt-get install -y libtool
sudo apt-get install -y xutils-dev xcb libxcb-composite0-dev
sudo apt-get install -y doxygen

#script 120
sudo apt-get install -y libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev 
sudo apt-get install -y libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev


echo
echo
echo "#########################################"
echo "dependencies for i3 with gaps installed"
echo "#########################################"
sleep 2


echo " NEXT STEP "


echo "###############################"
echo "Xcb-util-xrm"
echo "###############################"

# dependancy on xcb-util-xrm

rm -rf /tmp/xcb-util-xrm
git clone --recursive https://github.com/Airblader/xcb-util-xrm.git /tmp/xcb-util-xrm
cd /tmp/xcb-util-xrm
git submodule update --init
sh /tmp/xcb-util-xrm/autogen.sh --prefix=/usr
make && sudo make install

rm -rf /tmp/xcb-util-xrm

echo
echo
echo "###############################"
echo "Xcb-util-xrm installed"
echo "###############################"
sleep 2


echo " NEXT STEP "


echo "##################################################"
echo "Latest possible version of i3 with gaps"
echo "##################################################"

# installing i3 gap

cd /tmp/

rm -rf /tmp/Airblader

git clone https://github.com/Airblader/i3.git /tmp/Airblader
cd /tmp/Airblader

# compile & install
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/

# Disabling sanitizers is important for release versions!
# The prefix and sysconfdir are, obviously, dependent on the distribution.
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers

make && sudo make install

rm -rf /tmp/Airblader

echo "You installed the following version"
echo
echo
i3 --version
echo
echo
echo "##################################################"
echo "Latest possible version of i3 with gaps installed"
echo "##################################################"
sleep 2
