#wine Debian Ubuntu install V1
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