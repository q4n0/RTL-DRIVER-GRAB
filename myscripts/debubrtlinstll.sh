sudo apt-get update
sudo apt-get install make gcc linux-headers-$(uname -r) build-essential git
sudo apt-get install make gcc linux-headers-$(uname -r) build-essential git
git clone https://github.com/lwfinger/rtw88.git
cd rtw88
make
sudo make install

