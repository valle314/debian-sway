#!/bin/bash

sudo rm /etc/apt/sources.list
sudo cp -r ./sources.list /etc/apt/
sudo apt update
sudo apt upgrade
# sudo apt install nvidia-driver
sudo apt install --no-install-recommends wget libvulkan1 build-essential gcc-multilib dkms
wget -O nvidia-550.54.14.sh https://us.download.nvidia.com/XFree86/Linux-x86_64/550.54.14/NVIDIA-Linux-x86_64-550.54.14.run
sudo chmod +x ./nvidia-550.54.14.sh
./nvidia-550.54.14.sh

echo "updating config for nvidia"
sudo mkdir -p /etc/default/
sudo mkdir -p /boot/grub/
sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet"/GRUB_CMDLINE_LINUX_DEFAULT="quiet loglevel=2 nvidia_drm.modeset=1"/' /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg

cp -r ./home_dots/.bash* $HOME/

echo "reboot your pc"
