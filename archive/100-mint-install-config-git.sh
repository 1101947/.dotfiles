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
# -replace 10411@mail.ru with your git user email
# -replace 1101947 with your git user name
#
###############################################################################

# git config --global user.email "10411@mail.ru" 
# git config --global user.name "1101947"

##############################################################################
#
# 2.This will set storing your credentials for 18000 seconds
#
##############################################################################

# git config --global credential.helper cache
# git config --global credential.helper 'cache --timeout=18000'

##############################################################################
#
# 3.This will set the default push mode             
# - uncomment only one line!
#
##############################################################################

# git config --global push.default matching
# git config --global push.default simple

echo "#########################################"
echo "   That's all! Thank You!  "
echo "#########################################"
sleep 2



