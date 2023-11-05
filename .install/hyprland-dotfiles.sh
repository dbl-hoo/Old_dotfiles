# ------------------------------------------------------
# Install dotfiles
# ------------------------------------------------------

echo "-> Install dotfiles"
echo "The script will now remove existing directories and files from ~/.config/"
echo "Symbolic links will then be created from ~/dotfiles into your ~/.config/ directory."
echo "PLEASE BACKUP YOUR EXISTING CONFIGURATIONS IF NEEDED."
echo ""

while true; do
    read -p "Do you want to install the dotfiles now? (Yy/Nn): " yn
    case $yn in
        [Yy]* )
            _installSymLink alacritty ~/.config/alacritty ~/dotfiles/alacritty/ ~/.config
            _installSymLink vim ~/.config/vim ~/dotfiles/vim/ ~/.config
            _installSymLink nvim ~/.config/nvim ~/dotfiles/nvim/ ~/.config
            _installSymLink starship ~/.config/starship.toml ~/dotfiles/starship/starship.toml ~/.config/starship.toml
            _installSymLink rofi ~/.config/rofi ~/dotfiles/rofi/ ~/.config
            _installSymLink dunst ~/.config/dunst ~/dotfiles/dunst/ ~/.config
            _installSymLink wal ~/.config/wal ~/dotfiles/wal/ ~/.config

            wal -i ~/dotfiles/wallpapers/default.jpg
            echo "Pywal and templates initiated!"
            echo ""

            _installSymLink hypr ~/.config/hypr ~/dotfiles/hypr/ ~/.config
            _installSymLink waybar ~/.config/waybar ~/dotfiles/waybar/ ~/.config
            _installSymLink swaylock ~/.config/swaylock ~/dotfiles/swaylock/ ~/.config
            _installSymLink wlogout ~/.config/wlogout ~/dotfiles/wlogout/ ~/.config
            _installSymLink swappy ~/.config/swappy ~/dotfiles/swappy/ ~/.config
            _installSymLink .gtkrc-2.0 ~/.gtkrc-2.0 ~/dotfiles/gtk/.gtkrc-2.0 ~/.gtkrc-2.0
            _installSymLink .Xresources ~/.Xresources ~/dotfiles/gtk/.Xresources ~/.Xresources
            _installSymLink gtk-3.0 ~/.config/gtk-3.0 ~/dotfiles/gtk/gtk-3.0/ ~/.config/
            _installSymLink gtk-4.0 ~/.config/gtk-4.0 ~/dotfiles/gtk/gtk-4.0/ ~/.config/            

        break;;
        [Nn]* ) 
            echo "Installation of dotfiles skipped."
        break;;
        * ) echo "Please answer yes or no.";;
    esac
done
echo ""