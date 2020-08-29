echo "Any-App setup script V0.4"
echo "An update, upgrade and git install will be run to make sure the system is ready for install"
sudo apt-get update -y > /dev/null 2>&1
sudo apt-get upgrade -y > /dev/null 2>&1
sudo apt-get -qq install git -y
#User choses what to install
echo "What type of install do you want:"
echo "(1) Windows EXE (wine)" #Installs WINE
echo "(x) MacOS APP (darling)" #Installs Darling
echo "(x) Both (wine, darling)" #Installs Both
echo "(4) Windows For Linux ubuntu setup (XFCE4, XRDP, ZSH, P10K)"
echo "(5) Partial Distro setup"
echo "(x) Full distro setup (for fresh ubuntu install only)" #Installs both and sets up background, ZSH, P10K, Nerd Fonts
echo "(x) Windows For Linux Distro Setup (for fresh ubuntu wsl install only)" #Installs both and sets up background, ZSH, P10K, Nerd Fonts, XRDP, and GUI
echo ""
echo "(CTRL C) exit"
read -p "Type: " type
if [ $type -eq 1 ] #wine install
then
	echo "Installing wine"
	sudo dpkg --add-architecture i386 > /dev/null 2>&1
	echo "16%"
	wget -nc https://dl.winehq.org/wine-builds/winehq.key > /dev/null 2>&1
	echo "33%"
	sudo apt-key add winehq.key > /dev/null 2>&1
	echo "50%"
	sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main' > /dev/null 2>&1
	echo "66%"
	sudo apt-get update -y > /dev/null 2>&1
	echo "83%"
	sudo apt-get -qq install -y wine64 wine32
	echo "100%"
	echo "Wine Installed. Now exiting AnyApp."
elif [ $type -eq 4 ] #wsl setup
then
	echo "Installing XFCE4"
	sudo apt-get -qq install xfce4 xfce4-goodies -y 
	echo "100%"
	echo "Installing XRDP"
	sudo apt-get -qq install xrdp -y
	echo "33%"
	sudo sed -i 's/3389/3388/g' /etc/xrdp/xrdp.ini
	echo "67%"
	sudo /etc/init.d/xrdp start
	echo "100%"
	echo "Installing ZSH"
	sudo apt-get -qq install zsh -y
	echo "50%"
	sudo chsh -s /bin/zsh
	chsh -s /bin/zsh
	echo "100%"
	echo "Installing  fonts for P10K"
	mkdir -p ~/.local/share/fonts
	echo "20%"
	cd ~/.local/share/fonts
	echo "40%"
	wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip
	echo "60%"
	unzip hack.zip
	echo "80%"
	cd
	echo "100%"
	echo "You will need to change your font settings in terminal to Hack Nerd Font for P10K to work best"
	echo "Installing P10k"
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
	echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc
	echo "P10k Installed"
	echo "You will need to logout and back in for P10k and zsh to take effect"
	echo "AnyApp will now exit"
elif [ $type -eq 5 ] #part distro setup
then
	echo "Installing ZSH"
	sudo apt-get -qq install zsh -y
	echo "50%"
	sudo chsh -s /bin/zsh
	chsh -s /bin/zsh
	echo "100%"
	echo "Installing  fonts for P10K"
	mkdir -p ~/.local/share/fonts
	echo "20%"
	cd ~/.local/share/fonts
	echo "40%"
	wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip
	echo "60%"
	unzip hack.zip
	echo "80%"
	cd
	echo "100%"
	echo "You will need to change your font settings in terminal to Hack Nerd Font for P10K to work best"
	echo "Installing P10k"
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
	echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc
	echo "P10k Installed"
	echo "You will need to logout and back in for P10k and zsh to take effect"
	echo "AnyApp will now exit"

else
	echo "Sorry this feature is under development. Now exiting AnyApp"
fi
