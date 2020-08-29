#ZSH Install V1
echo "Installing ZSH"
sudo apt-get -qq install zsh -y > /dev/null 2>&1
cp "Resources/zshrc" ~/.zshrc
echo "50%"
sudo chsh -s /bin/zsh
chsh -s /bin/zsh
echo "100%"
echo "Installing  fonts for P10K"
mkdir ~/fonts/ && cd ~/fonts/
echo "Fonts will be store in ~/fonts/ and will need installing"
echo "25%"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip  > /dev/null 2>&1
echo "50%"
unzip hack.zip
echo "75%"
cd
echo "100%"
echo "You will need to change your font settings in terminal to Hack Nerd Font for P10K to work best"
echo "Installing P10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k  > /dev/null 2>&1
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc
echo "P10k Installed"
echo "You will need to logout and back in for P10k and zsh to take effect"