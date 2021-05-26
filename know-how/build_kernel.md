sudo apt-get update
sudo apt update
sudo apt install -y gcc
sudo apt install -y make

# Simple upgrade
uname -r -> 5.4.0-1028-gcp
sudo apt search linux-image | grep gcp

# Go hard
https://wiki.ubuntu.com/Kernel/BuildYourOwnKernel

sudo apt-get build-dep linux linux-image-$(uname -r)
sudo apt-get install libncurses-dev flex bison openssl libssl-dev dkms libelf-dev libudev-dev libpci-dev libiberty-dev autoconf
sudo apt-get install git

## Get the source code
Need sed & update from "source_code.md" first?
apt-get source linux-image-$(uname -r)
for compiling a different kernel than the current one, go via git

## Change config
chmod a+x debian/rules
chmod a+x debian/scripts/*
chmod a+x debian/scripts/misc/*
LANG=C fakeroot debian/rules clean

### This doesn't work
LANG=C fakeroot debian/rules editconfigs
How to change configs then?

## Build & install
LANG=C fakeroot debian/rules binary
cd ..
sudo dpkg -i linux-image-5.4.0-1028-gcp_5.4.0-1028.29~18.04.1_amd64.deb
sudo reboot
