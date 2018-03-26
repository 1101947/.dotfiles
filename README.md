# Just my dotfiles, conspects and scripts

I was interested in conception of placing personal settings on github known from https://github.com/erikdubois. I took his scripts as a base. I'm trying to switch to linux for 10 years and this time I'm going to start seriously.
Feel free to use if you find here something helpful.

### About scripts

Scripts in root directory are written to use on fresh Arch Linux installation. My way - is testing new things on a virtual machine. *Please, read script's 
content before start it.*

- 100-install-config-git.v2.sh script by default only configures git with my credentials. Change them to your's before starting script. If you need to install git first, uncomment appropriate command. In future plans I want to make it asking for credentials during setup.

### About scripts in archive folder

These scripts were created and sucsessfully tested on Linux Mint 18.3 XFCE, but also may work in other ubuntu- and may be, with some edits, in debian-based distributions. *And, of course, read them before execute.*

- 100-mint-install-config-git.sh script by default only installs git. To configure your git installation you should edit it. All comments are inside.

- 200-mint-install-i3-gaps.sh script automaticaly installs all dependencies and the latest git version of i3wm with gaps.
