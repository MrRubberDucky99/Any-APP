echo "Any-App update script V1.2"
echo "An update, upgrade and git install will be run to make sure the system is ready for install"
sudo apt-get update -y > /dev/null 2>&1
sudo apt-get upgrade -y > /dev/null 2>&1
#User choses what to install
echo "What type of install do you want:"
echo "(1) Windows EXE (wine)" #Installs WINE
echo "(x) MacOS APP (darling)" #Installs Darling
echo "(x) Both (wine, darling)" #Installs Both
echo "(4) Windows For Linux ubuntu setup (XFCE4, XRDP, ZSH, P10K)"
echo "(5) ZSH & P10k setup"
echo "(6) Windows For Linux Distro Setup (for fresh ubuntu wsl install only)" #Installs wine and sets up background, ZSH, P10K, Nerd Fonts, XRDP, and GUI
echo "(x) Full distro setup (for fresh ubuntu install only)" #Installs both and sets up background, ZSH, P10K, Nerd Fonts
echo ""
echo "(CTRL C) exit"
read -p "Type: " type
if [ $type -eq 1 ] #wine install
then
	bash "Install Scripts/wine-update-DU.sh"
	echo "Wine updated. Now exiting AnyApp."
elif [ $type -eq 4 ] #wsl setup
then
	bash "Install Scripts/XFCE-XRDP-update-DU.sh"
	bash "Install Scripts/ZSH-P10K-update-DU.sh"
	echo "AnyApp will now exit"
elif [ $type -eq 5 ] #part distro setup
then
	bash "Install Scripts/ZSH-P10K-update-DU.sh"
	echo "AnyApp will now exit"
elif [ $type -eq 6 ] #wsl full setup
then
	bash "Install Scripts/XFCE-XRDP-update-DU.sh"
	bash "Install Scripts/ZSH-P10K-update-DU.sh"
	bash "Install Scripts/wine-update-DU.sh"
	echo "AnyApp will now exit"
else
	echo "Sorry this feature is not avaliable. Now exiting AnyApp"
fi
