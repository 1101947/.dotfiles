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

# !- This will set your global credentials -! #
# !- Replace MAIL with your git user email -! #
# !- Replace NAME with your git user name  -! #

#git config --global user.email MAIL 
#git config --global user.name NAME


# !- This will set storing your credentials with gnome-keyring -! #

#sudo apt install libgnome-keyring-dev 
#cd /usr/share/doc/git/contrib/credential/gnome-keyring
#sudo make
#git config --global credential.helper /usr/share/doc/git/contrib/credential/gnome-keyring/git-credential-gnome-keyring


# !- This will set the default push mode -! #
# !- Uncomment only one line!            -! #

#git config --global push.default matching
#git config --global push.default simple

echo "#########################################"
echo "   That's all!   "
echo "#########################################"
sleep 2



