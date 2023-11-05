# ------------------------------------------------------
# Install required packages
# ------------------------------------------------------

echo "-> Install packages"
_installPackagesPacman "${packagesPacman[@]}";
_installPackagesYay "${packagesYay[@]}";
echo ""