#!/bin/bash

sudo apt install --no-install-recommends -y git meson wget build-essential ninja-build cmake libxml2-dev libxkbcommon-x11-dev libxkbcommon-dev libpixman-1-dev libudev-dev libseat-dev seatd libxcb-dri3-dev libvulkan-dev libvulkan-volk-dev  vulkan-validationlayers-dev libvkfft-dev libgulkan-dev libegl-dev libgles2 libegl1-mesa-dev glslang-tools libxcb-composite0-dev libavutil-dev libavcodec-dev libavformat-dev libxcb-ewmh2 libxcb-ewmh-dev libxcb-present-dev libxcb-icccm4-dev libxcb-render-util0-dev libxcb-res0-dev libxcb-xinput-dev hwdata libgbm-dev xwayland libwacom-dev libjson-c-dev libpango1.0-dev libmtdev-dev libevdev-dev libgtk-3-dev libgtk-4-dev check foot 

git clone https://gitlab.freedesktop.org/libinput/libinput --branch 1.26.2 --single-branch --depth 1
cd libinput
meson setup --prefix=$HOME/.local builddir/
ninja -C builddir/
ninja -C builddir/ install
cd ..
rm -rf ./libinput

git clone https://gitlab.freedesktop.org/mesa/drm --branch libdrm-2.4.123 --single-branch --depth 1 # libdrm-2.4.122 libdrm-2.4.123
cd drm
meson setup --prefix=$HOME/.local builddir/
ninja -C builddir/
ninja -C builddir/ install
cd ..
rm -rf ./drm

git clone https://gitlab.freedesktop.org/emersion/libliftoff --branch v0.5.0 --single-branch --depth 1
cd libliftoff
meson setup --prefix=$HOME/.local builddir/
ninja -C builddir/
ninja -C builddir/ install
cd ..
rm -rf ./libliftoff

git clone https://gitlab.freedesktop.org/wlroots/wlroots --branch 0.18.0 --single-branch --depth 1
cd wlroots 
mkdir subprojects
cd subprojects
git clone https://gitlab.freedesktop.org/wayland/wayland --branch 1.23.1 --single-branch --depth 1
git clone https://gitlab.freedesktop.org/emersion/libdisplay-info --branch 0.2.0 --single-branch --depth 1
git clone https://gitlab.freedesktop.org/wayland/wayland-protocols --branch 1.38 --single-branch --depth 1
cd ..
meson setup --prefix=$HOME/.local build/
ninja -C build/
ninja -C build/ install
cd ..
rm -rf ./wlroots

git clone https://github.com/swaywm/sway --branch 1.10 --single-branch --depth 1
cd ./sway
meson setup --prefix=$HOME/.local builddir/
ninja -C builddir/
ninja -C builddir/ install
cd ..
rm -rf ./sway

mkdir -p $HOME/.config/sway
cp ./sway_config/config $HOME/.config/sway
