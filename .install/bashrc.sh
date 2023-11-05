# ------------------------------------------------------
# Install .bashrc
# ------------------------------------------------------

echo "-> Install .bashrc"
while true; do
    read -p "Do you want to install the .bashrc file? (Yy/Nn): " yn
    case $yn in
        [Yy]* )
            _installSymLink .bashrc ~/.bashrc ~/dotfiles/.bashrc ~/.bashrc
        break;;
        [Nn]* ) 
            echo "Installation skipped."
        break;;
        * ) echo "Please answer yes or no.";;
    esac
done
echo ""
