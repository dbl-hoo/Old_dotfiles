# ------------------------------------------------------
# Disable display manager
# ------------------------------------------------------
disman=0
if [ -f /etc/systemd/system/display-manager.service ]; then
    echo "An active display manager has been dedected."
    while true; do
        read -p "Do you want to deactive the current display manager (Yy/Nn): " yn
        case $yn in
            [Yy]* )
                if [ -f /etc/systemd/system/display-manager.service ]; then
                    sudo rm /etc/systemd/system/display-manager.service
                    echo "Current display manager removed."
                fi
                disman=1
            break;;
            [Nn]* ) 
                echo "Disable display manager skipped."
                echo "You can run ~/dotfiles/hypr/script/disablewm.sh at a later point of time if needed."
            break;;
            * ) echo "Please answer yes or no.";;
        esac
    done
    echo ""
else
    disman=1
fi
