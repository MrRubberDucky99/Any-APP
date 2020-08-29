#XFCE4 & XRDP Debian Ubuntu install V1
echo "Updating XFCE4"
sudo apt-get -qq install xfce4 xfce4-goodies -y  > /dev/null 2>&1
echo "100%"
echo "Updating XRDP"
sudo apt-get -qq install xrdp -y  > /dev/null 2>&1
echo "50%"
sudo /etc/init.d/xrdp start > /dev/null 2>&1
echo "100%"