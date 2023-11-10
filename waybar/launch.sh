#!/bin/sh
#  ____  _             _    __        __          _                 
# / ___|| |_ __ _ _ __| |_  \ \      / /_ _ _   _| |__   __ _ _ __  
# \___ \| __/ _` | '__| __|  \ \ /\ / / _` | | | | '_ \ / _` | '__| 
#  ___) | || (_| | |  | |_    \ V  V / (_| | |_| | |_) | (_| | |    
# |____/ \__\__,_|_|   \__|    \_/\_/ \__,_|\__, |_.__/ \__,_|_|    
#                                           |___/                   
# by Stephan Raabe (2023) 
# ----------------------------------------------------- 

# ----------------------------------------------------- 
# Quit all running waybar instances
# ----------------------------------------------------- 
killall waybar
sleep 0.2
# ----------------------------------------------------- 
# Default theme: /THEMEFOLDER;/VARIATION
# ----------------------------------------------------- 
themestyle="/ml4w;/ml4w/light"

# ----------------------------------------------------- 
# Get current theme information from .cache/.themestyle.sh
# ----------------------------------------------------- 
if [ -f /home/kirkham/.cache/.themestyle.sh ]; then
    themestyle=$(cat /home/kirkham/.cache/.themestyle.sh)
else
    touch /home/kirkham/.cache/.themestyle.sh
    echo "$themestyle" > /home/kirkham/.cache/.themestyle.sh
fi

IFS=';' read -ra arrThemes <<< "$themestyle"
echo ${arrThemes[0]}

if [ ! -f /home/kirkham/dotfiles/waybar/themes${arrThemes[1]}/style.css ]; then
    themestyle="/ml4w;/ml4w/light"
fi

# ----------------------------------------------------- 
# Loading the configuration
# ----------------------------------------------------- 
waybar -c /home/kirkham/dotfiles/waybar/themes${arrThemes[0]}/config -s /home/kirkham/dotfiles/waybar/themes${arrThemes[1]}/style.css &
#/usr/bin/waybar -c /home/kirkham/dotfiles/waybar/themes/ml4w/config -s /home/kirkham/dotfiles/waybar/themes/ml4w/style.css &
#waybar &