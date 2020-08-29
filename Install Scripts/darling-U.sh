echo "Installing Darling Prerequisites"
sudo apt-get -qq install -y python2 cmake clang bison flex libfuse-dev libudev-dev pkg-config libc6-dev-i386 \
linux-headers-generic gcc-multilib libcairo2-dev libgl1-mesa-dev libglu1-mesa-dev libtiff5-dev \
libfreetype6-dev git libelf-dev libxml2-dev libegl1-mesa-dev libfontconfig1-dev libbsd-dev \
libxrandr-dev libxcursor-dev libgif-dev libavutil-dev libpulse-dev libavformat-dev libavcodec-dev \
libavresample-dev libdbus-1-dev libxkbfile-dev libssl-dev  > /dev/null 2>&1
echo "100%"
echo "Installing Darling"
git clone --recursive https://github.com/darlinghq/darling.git
echo "25%"
cd darling/
mkdir build && cd build
echo "50%"
cmake ..
make
echo "75%"
sudo make install
echo "100%"
echo "Installing Darling Kernal"
make lkm
echo "50%"
sudo make lkm_install
echo "100%"