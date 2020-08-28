echo "Any-App setup script V0.1"
#User choses what to install
echo "What type of install do you want:"
echo "(W) Windows EXE (wine)" #Installs WINE
echo "(M) MacOS APP (darling)" #Installs Darling
echo "(B) Both" #Installs Both
echo "(F) Full distro conversion (for fresh ubuntu install only)" #Installs both and sets up background, ZSH, P10K, Nerd Fonts
echo "(WSL) Windows For Linux Distro Setup (for fresh ubuntu wsl install only)" #Installs both and sets up background, ZSH, P10K, Nerd Fonts, XRDP, and GUI
read InstallType
if $InstallType -eq W
then
	echo "Installing wine"
	sudo apt-get install -y wine wine32
else
	echo "Sorry this feature is under development"
