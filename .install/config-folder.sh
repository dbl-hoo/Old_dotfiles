# ------------------------------------------------------
# Create .config folder
# ------------------------------------------------------

echo "-> Check if .config folder exists"
if [ -d ~/.config ]; then
    echo ".config folder already exists."
else
    mkdir ~/.config
    echo ".config folder created."
fi
echo ""
