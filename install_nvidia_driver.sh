#!/bin/bash

sudo rm /etc/apt/sources.list
sudo cp -r ./sources.list /etc/apt/
sudo apt update
sudo apt upgrade
sudo apt full-upgrade
sudo apt autoremove
sudo apt install --no-install-recommends wget libvulkan1 build-essential gcc-multilib dkms
sudo apt-get install linux-headers-$(uname -r)
wget https://us.download.nvidia.com/tesla/550.54.14/nvidia-driver-local-repo-debian12-550.54.14_1.0-1_amd64.deb
sudo dpkg -i nvidia-driver-local-repo-debian12-550.54.14_1.0-1_amd64.deb
sudo cp /var/nvidia-driver-local-repo-debian12-550.54.14/nvidia-driver-local-64642CF5-keyring.gpg /usr/share/keyrings/
sudo apt update
sudo apt install cuda-drivers

echo "updating config for nvidia"
sudo mkdir -p /etc/default/
sudo mkdir -p /boot/grub/
sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet"/GRUB_CMDLINE_LINUX_DEFAULT="quiet loglevel=2 nvidia_drm.modeset=1"/' /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg

cp -r ./home_dots/.bash* $HOME/

echo "reboot your pc"
