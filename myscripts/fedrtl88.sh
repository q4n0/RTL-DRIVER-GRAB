sudo dnf install kernel-headers kernel-devel
sudo dnf group install "C Development Tools and Libraries"
git clone https://github.com/lwfinger/rtw88.git
cd /rtw88
make
sudo make install
