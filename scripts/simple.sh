#!/bin/sh
notify-send 'Hello world!' 'This is an example notification.' --icon=dialog-information
killall waybar	
waybar -c /home/kirkham/dotfiles/waybar/themes/ml4w/config -s /home/kirkham/dotfiles/waybar/themes/ml4w/style.css &