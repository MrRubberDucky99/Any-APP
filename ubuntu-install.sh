echo "Any-App setup script V0.2"
echo "An update and upgrade will be run to make sure the system is ready for install"
sudo apt-get update -y > /dev/null 2>&1
sudo apt-get upgrade -y > /dev/null 2>&1
#User choses what to install
echo "What type of install do you want:"
echo "(1) Windows EXE (wine)" #Installs WINE
echo "Sorry the other install types are still under development"
#echo "(2) MacOS APP (darling)" #Installs Darling
#echo "(3) Both" #Installs Both
#echo "(4) Full distro conversion (for fresh ubuntu install only)" #Installs both and sets up background, ZSH, P10K, Nerd Fonts
#echo "(5) Windows For Linux Distro Setup (for fresh ubuntu wsl install only)" #Installs both and sets up background, ZSH, P10K, Nerd Fonts, XRDP, and GUI
echo ""
echo "(Ctrl C) exit"
read -p "Type: " type
if [ $type -eq 1 ]
then
	echo "Installing wine"
	sudo dpkg --add-architecture i386 > /dev/null 2>&1
	wget -nc https://dl.winehq.org/wine-builds/winehq.key > /dev/null 2>&1
	sudo apt-key add winehq.key > /dev/null 2>&1
	sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main' > /dev/null 2>&1
	sudo apt-get update -y > /dev/null 2>&1
	sudo apt-get install -y wine64 wine32
else
	echo "Sorry this feature is under development"
fi
