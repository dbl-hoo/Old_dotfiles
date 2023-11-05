#!/bin/bash
#  _   _                  _                 _  
# | | | |_   _ _ __  _ __| | __ _ _ __   __| | 
# | |_| | | | | '_ \| '__| |/ _` | '_ \ / _` | 
# |  _  | |_| | |_) | |  | | (_| | | | | (_| | 
# |_| |_|\__, | .__/|_|  |_|\__,_|_| |_|\__,_| 
#        |___/|_|                              
#  
# by Stephan Raabe (2023) 
# ----------------------------------------------------- 
# Install Script for Hyprland
# ------------------------------------------------------
clear
source .install/library.sh
source .install/hyprland.sh
source .install/confirm-start.sh
source .install/yay.sh
source .install/hyprland-packages.sh
source .install/install-packages.sh
source .install/pywal.sh
source .install/wallpaper.sh

echo "IMPORTANT: Starting Hyprland from tty (terminal) with command Hyperland is recommended."
echo "Login with display managers could fail and could have negative side effects on some devices."

source .install/disabledm.sh
source .install/issue.sh
source .install/config-folder.sh
source .install/bashrc.sh
source .install/hyprland-dotfiles.sh

echo "IMPORTANT: Please check the keyboard layout and screen resolution in ~/dotfiles/hypr/hyprland.conf"
echo ""

source .install/done.sh
