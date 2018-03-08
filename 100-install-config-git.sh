#!/bin/bash
set -e
#                                       
#
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#   By default it only installs git. To configure git you should edit it
#   See comments below 
#
##################################################################################################################

sudo apt install -y git

##################################################################################################################
#                                                             
#        To configure your git, uncomment needed commands
#
##################################################################################################################

###############################################################################
#
# 1.This will set your global credentials
# -replace MAIL with your git user email
# -replace NAME with your git user name
#
###############################################################################

#git config --global user.email MAIL 
#git config --global user.name NAME

##############################################################################
#
# 2.This will set storing your credentials with gnome-keyring
#
##############################################################################

#sudo apt install -y libgnome-keyring-dev 
#cd /usr/share/doc/git/contrib/credential/gnome-keyring
#sudo make
#git config --global credential.helper /usr/share/doc/git/contrib/credential/gnome-keyring/git-credential-gnome-keyring

##############################################################################
#
# 3.This will set the default push mode             
# - to know more read this https://stackoverflow.com/questions/21839651/git-what-is-the-difference-between-push-default-matching-and-simple
# - uncomment only one line!
#
##############################################################################

#git config --global push.default matching
#git config --global push.default simple

echo "#########################################"
echo "   That's all! Thank You!  "
echo "#########################################"
sleep 2



