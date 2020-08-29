echo "Installing XFCE4"
sudo apt-get -qq install xfce4 xfce4-goodies -y  > /dev/null 2>&1
echo "100%"
echo "Installing XRDP"
sudo apt-get -qq install xrdp -y  > /dev/null 2>&1
echo "33%"
sudo sed -i 's/3389/3388/g' /etc/xrdp/xrdp.ini > /dev/null 2>&1
echo "67%"
sudo /etc/init.d/xrdp start > /dev/null 2>&1
echo "100%"