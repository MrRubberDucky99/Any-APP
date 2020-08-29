echo "Installing Backgound"
cp "Resources/AnyApp-Background.png" /usr/share/backgrounds/
echo "50%"
sudo apt-get -qq install gnome-tweaks -y > /dev/null 2>&1
echo "100%"
echo "Background Installed."
echo "To use background open Gnome tweak, and in the appearance tab set the background to AnyApp-Background.png"