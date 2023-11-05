#!/bin/bash
#   ___ _____ ___ _     _____        
#  / _ \_   _|_ _| |   | ____|  
# | | | || |  | || |   |  _|   
# | |_| || |  | || |___| |___  
#  \__\_\|_| |___|_____|_____| 
#                               
# by Stephan Raabe (2023)
# ------------------------------------------------------
# Install Script for Qtile
# ------------------------------------------------------
clear
source .install/library.sh
source .install/qtile.sh
source .install/confirm-start.sh
source .install/yay.sh
source .install/qtile-packages.sh
source .install/install-packages.sh
source .install/pywal.sh
source .install/wallpaper.sh

if [ -f /etc/systemd/system/display-manager.service ]; then
echo "PLEASE NOTE: Qtile works with Display Managers."
echo "But if you want to use the tty based (terminal) login instead, you can disable the display manager now."
echo ""
fi

source .install/disabledm.sh
source .install/issue.sh
source .install/config-folder.sh
source .install/bashrc.sh
source .install/qtile-dotfiles.sh

echo "IMPORTANT: Please check the keyboard layout in ~/dotfiles/qtile/config.py"
echo ""

source .install/done.sh