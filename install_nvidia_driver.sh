#!/bin/bash

sudo rm /etc/apt/sources.list
sudo cp -r ./sources.list /etc/apt/
sudo apt update
sudo apt upgrade
sudo apt install --no-install-recommends wget libvulkan1 build-essential gcc-multilib dkms
sudo apt-get install linux-headers-$(uname -r)
sudo apt purge nvidia*
sudo apt purge libnvidia*
sudo apt purge cuda*
sudo apt autoremove
wget https://developer.download.nvidia.com/compute/cuda/12.4.0/local_installers/cuda_12.4.0_550.54.14_linux.runsudo 
sudo sh cuda_12.4.0_550.54.14_linux.run
sudo rm ./cuda_12.4.0_550.54.14_linux.run

echo "updating config for nvidia"
sudo mkdir -p /etc/default/
sudo mkdir -p /boot/grub/
sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet"/GRUB_CMDLINE_LINUX_DEFAULT="quiet loglevel=2 nvidia_drm.modeset=1"/' /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg

cp -r ./home_dots/.bash* $HOME/

echo "reboot your pc"
