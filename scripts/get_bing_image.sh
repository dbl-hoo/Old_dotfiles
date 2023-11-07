#!/bin/sh

DIR="$HOME/wallpaper/"

# Check if home/wallpaper directory exists, if not create it.
if [ ! -d "$DIR" ]; then
  mkdir -p $DIR
fi

# Wallpaper path
wlpath="$HOME/wallpaper/wallpaper.jpg"

# Lockscreen wallpaper path
lswlpath="$HOME/wallpaper/lockscreen_wallpaper.jpg"
output="*"
baseurl="https://www.bing.com/"

# Get URL for Bing Image Of The Day for Canada
while [ -z $wlurl ]; do
  wlurl=$(curl $baseurl"HPImageArchive.aspx?format=js&idx=0&n=1&mkt=en-CA" -s | jq '.images[].url' --raw-output)
done

# Get name for Bing Image of the Day
imageName=$(curl $baseurl"HPImageArchive.aspx?format=js&idx=0&n=1&mkt=en-CA" -s | jq '.images[].copyright' --raw-output)

# Save Bing image name
echo $imageName > $HOME/wallpaper/bing_name.txt

# Download and save Bing Image of the Day
curl "$baseurl$wlurl" -s > $wlpath

# Ensure no instances of swaybg and nwg-wrapper are already running
# killall swaybg || true
killall nwg-wrapper || true

# set colors for new wallpaper
wal -q -i $wlpath

# ----------------------------------------------------- 
# Load current pywal color scheme
# ----------------------------------------------------- 
source "$HOME/.cache/wal/colors.sh"
echo "Wallpaper: $wlpath"

# ----------------------------------------------------- 
# Copy selected wallpaper into .cache folder
# ----------------------------------------------------- 
cp $wlpath ~/.cache/current_wallpaper.jpg

# ----------------------------------------------------- 
# Reload waybar with new colors
# -----------------------------------------------------
~/dotfiles/waybar/launch.sh

# set image with swww
transition_type="wipe"
# transition_type="outer"
# transition_type="random"

swww img $wlpath \
    --transition-bezier .43,1.19,1,.4 \
    --transition-fps=60 \
    --transition-type=$transition_type \
    --transition-duration=0.7 \
    --transition-pos "$( hyprctl cursorpos )"

# Display image name on bottom right of the wallpaper
nwg-wrapper -t $HOME/wallpaper/bing_name.txt -c $HOME/dotfiles/scripts/bing_name.css -p right -a end -mb 10 -mr 10 &

# Blur existing wallpaper to user later as a lock screen
#convert $wlpath -filter Gaussian -blur 0x8 -level 10%,90%,0.5 $lswlpath
echo "success"
