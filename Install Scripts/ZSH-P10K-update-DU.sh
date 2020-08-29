#ZSH update V1
echo "Updating ZSH"
sudo apt-get -qq install zsh -y > /dev/null 2>&1
echo "100%"
echo "updating installed fonts for P10K"
sudo apt-get -qq install font-manager -y > /dev/null 2>&1
echo "50%"
fc-cache -f -v > /dev/null 2>&1
echo "100%"