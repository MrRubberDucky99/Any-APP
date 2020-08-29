#Darling Ubuntu install V1

echo "Updating Darling"
cd darling/
git pull
git submodule init
git submodule update
echo "25%"
cd build
echo "50%"
cmake ..
make
echo "75%"
sudo make install
echo "100%"
echo "updating Darling Kernal"
make lkm
echo "50%"
sudo make lkm_install
echo "100%"