# ------------------------------------------------------
# Install wallpapers
# ------------------------------------------------------

echo "-> Install wallpapers"
echo "Do you want to download the wallpapers from repository https://gitlab.com/stephan-raabe/wallpaper/ ?"
while true; do
    read -p "If not, the script will install 3 default wallpapers to ~/wallpaper/ (Yy/Nn): " yn
    case $yn in
        [Yy]* )
            wget -P ~/Downloads/ https://gitlab.com/stephan-raabe/wallpaper/-/archive/main/wallpaper-main.zip
            unzip -o ~/Downloads/wallpaper-main.zip -d ~/Downloads/
            if [ ! -d ~/wallpaper/ ]; then
                mkdir ~/wallpaper
            fi
            cp ~/Downloads/wallpaper-main/* ~/wallpaper/
            echo "Wallpapers installed successfully."
        break;;
        [Nn]* ) 
            if [ -d ~/wallpaper/ ]; then
                echo "wallpaper folder already exists."
            else
                mkdir ~/wallpaper
            fi
            cp ~/dotfiles/wallpapers/* ~/wallpaper
            echo "Default wallpapers installed."
        break;;
        * ) echo "Please answer yes or no.";;
    esac
done
echo ""

# ------------------------------------------------------
# Copy default wallpaper to .cache
# ------------------------------------------------------

echo "-> Copy default wallpaper to .cache"
cp ~/dotfiles/wallpapers/default.jpg ~/.cache/current_wallpaper.jpg
echo "Default wallpaper copied."
echo ""
