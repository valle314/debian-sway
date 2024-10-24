#!/bin/bash

# sudo apt install meson wget build-essential ninja-build cmake-extras cmake gettext gettext-base fontconfig libfontconfig-dev libffi-dev libxml2-dev libxkbcommon-x11-dev libxkbregistry-dev libxkbcommon-dev libpixman-1-dev libudev-dev libseat-dev seatd libxcb-dri3-dev libvulkan-dev libvulkan-volk-dev  vulkan-validationlayers-dev libvkfft-dev libgulkan-dev libegl-dev libgles2 libegl1-mesa-dev glslang-tools libxcb-composite0-dev libavutil-dev libavcodec-dev libavformat-dev libxcb-ewmh2 libxcb-ewmh-dev libxcb-present-dev libxcb-icccm4-dev libxcb-render-util0-dev libxcb-res0-dev libxcb-xinput-dev jq hwdata libgbm-dev xwayland foot

# git clone https://gitlab.freedesktop.org/libinput/libinput --branch 1.26.2
# sudo apt install libmtdev-dev libevdev-dev libwacom-dev libgtk-3-dev libgtk-4-dev check 
# cd libinput
# meson setup --prefix=$HOME/.local builddir/
# ninja -C builddir/
# ninja -C builddir/ install
# cd ..
# rm -rf ./libinput

# git clone https://gitlab.freedesktop.org/mesa/drm --branch libdrm-2.4.122
# mv ./drm ./libdrm
# cd libdrm
# meson setup --prefix=$HOME/.local builddir/
# ninja -C builddir/
# ninja -C builddir/ install
# cd ..
# rm -rf ./libdrm

# git clone https://gitlab.freedesktop.org/emersion/libliftoff --branch v0.5.0
# cd libliftoff
# meson setup --prefix=$HOME/.local builddir/
# ninja -C builddir/
# ninja -C builddir/ install
# cd ..
# rm -rf ./libliftoff

# git clone https://gitlab.freedesktop.org/wlroots/wlroots --branch 0.18.0
# cd wlroots 
# mkdir subprojects
# cd subprojects
# git clone https://gitlab.freedesktop.org/wayland/wayland --branch 1.23.1
# git clone https://gitlab.freedesktop.org/emersion/libdisplay-info --branch 0.2.0
# git clone https://gitlab.freedesktop.org/wayland/wayland-protocols --branch 1.38
# cd ..
# meson setup --prefix=$HOME/.local build/
# ninja -C build/
# ninja -C build/ install
# cd ..
# rm -rf ./wlroots
# sudo cp -R $HOME/.local/share/wayland-protocols/ /usr/share/

# git clone https://github.com/swaywm/sway --branch 1.10-rc3
# sudo apt install libjson-c-dev
# cd ./sway
# meson setup --prefix=$HOME/.local builddir/
# ninja -C builddir/
# ninja -C builddir/ install
# cd ..
# rm -rf ./sway

# mkdir -p $HOME/.config/sway
# cp ./sway_config/config $HOME/.config/sway
