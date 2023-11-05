# ------------------------------------------------------
# Install tty login and issue
# ------------------------------------------------------

if [ $disman == 1 ]; then
    echo "-> tty login and custom issue"
    while true; do
        read -p "Do you want to install the custom issue (Yy/Nn): " yn
        case $yn in
            [Yy]* )
                sudo cp ~/dotfiles/login/issue /etc/issue
            break;;
            [Nn]* ) 
                echo "Setup tty login skipped."
            break;;
            * ) echo "Please answer yes or no.";;
        esac
    done
    echo ""
fi