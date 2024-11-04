#!/bin/bash

sudo rm /etc/apt/sources.list
sudo cp -r ./sources.list /etc/apt/
sudo apt update
sudo apt upgrade
sudo apt install --no-install-recommends wget libvulkan1 build-essential gcc-multilib dkms
sudo apt-get install linux-headers-$(uname -r)
wget https://developer.download.nvidia.com/compute/cuda/repos/debian12/x86_64/cuda-keyring_1.1-1_all.deb
sudo dpkg -i cuda-keyring_1.1-1_all.deb
sudo apt update
sudo apt install cuda-drivers

echo "updating config for nvidia"
sudo mkdir -p /etc/default/
sudo mkdir -p /boot/grub/
sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet"/GRUB_CMDLINE_LINUX_DEFAULT="quiet loglevel=2 nvidia_drm.modeset=1"/' /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg

cp -r ./home_dots/.bash* $HOME/

echo "reboot your pc"
