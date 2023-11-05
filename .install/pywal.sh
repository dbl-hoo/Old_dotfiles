# ------------------------------------------------------
# Install pywal
# ------------------------------------------------------

echo "-> Install pywal"
if [ -f /usr/bin/wal ]; then
    echo "pywal already installed."
else
    yay --noconfirm -S pywal
    echo "Pywal installed."
fi
echo ""