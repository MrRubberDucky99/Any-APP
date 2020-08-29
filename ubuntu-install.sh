echo "Any-App setup script V0.4"
echo "An update, upgrade and git install will be run to make sure the system is ready for install"
sudo apt-get update -y > /dev/null 2>&1
sudo apt-get upgrade -y > /dev/null 2>&1
sudo apt-get -qq install git -y
#User choses what to install
echo "What type of install do you want:"
echo "(1) Windows EXE (wine)" #Installs WINE
echo "(2) MacOS APP (darling)" #Installs Darling
echo "(3) Both (wine, darling)" #Installs Both
echo "(4) Windows For Linux ubuntu setup (XFCE4, XRDP, ZSH, P10K)"
echo "(5) Partial Distro setup"
echo "(x) Full distro setup (for fresh ubuntu install only)" #Installs both and sets up background, ZSH, P10K, Nerd Fonts
echo "(x) Windows For Linux Distro Setup (for fresh ubuntu wsl install only)" #Installs both and sets up background, ZSH, P10K, Nerd Fonts, XRDP, and GUI
echo ""
echo "(CTRL C) exit"
read -p "Type: " type
if [ $type -eq 1 ] #wine install
then
	bash "Install Scripts/wine-DU.sh"
	echo "Wine Installed. Now exiting AnyApp."
	elif [ $type -eq 2 ] #wsl setup
then
	bash "Install Scripts/darling-U.sh"
	echo "AnyApp will now exit"
	elif [ $type -eq 3 ] #wsl setup
then
	bash "Install Scripts/wine-DU.sh"
	bash "Install Scripts/darling-U.sh"
	echo "AnyApp will now exit"
elif [ $type -eq 4 ] #wsl setup
then
	bash "Install Scripts/XFCE-XRDP-DU.sh"
	bash "Install Scripts/ZSH-P10K-ANY.sh"
	echo "AnyApp will now exit"
elif [ $type -eq 5 ] #part distro setup
then
	bash "Install Scripts/ZSH-P10K-ANY.sh"
	echo "AnyApp will now exit"

else
	echo "Sorry this feature is under development. Now exiting AnyApp"
fi
