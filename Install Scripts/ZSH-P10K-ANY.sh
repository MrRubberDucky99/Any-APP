#ZSH Install V1
echo "Installing ZSH"
sudo apt-get -qq install zsh -y > /dev/null 2>&1
cp "Resources/zshrc" ~/.zshrc
echo "50%"
sudo chsh -s /bin/zsh
chsh -s /bin/zsh
echo "100%"
echo "Installing  fonts for P10K"
sudo apt-get -qq install font-manager -y > /dev/null 2>&1
echo "25%"
mkdir ~/.fonts
echo "50%"
mv "Resources/Hack Regular Nerd Font Complete.ttf" ~/fonts/ && mv "Resources/Hack Regular Nerd Font Complete Mono.ttf" ~/fonts/
echo "75%"
fc-cache -f -v > /dev/null 2>&1
echo "100%"
echo "You will need to change your font settings in terminal to Hack Nerd Font for P10K to work best"
echo "Installing P10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k  > /dev/null 2>&1
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc
echo "P10k Installed"
echo "You will need to logout and back in for P10k and zsh to take effect"