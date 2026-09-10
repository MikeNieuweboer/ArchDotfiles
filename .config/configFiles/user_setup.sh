#!/bin/bash

# Setup script starting from the second step of general recs in the arch wiki.
SCRIPT_PATH=$(realpath $0)
SCRIPT_DIR=$(dirname $SCRIPT_PATH)

# Create hook for saving installed packages
# sudo mkdir /etc/pacman.d/hooks
# sudo ln -s ${SCRIPT_DIR}/pkglist.hook -t /etc/pacman.d/hooks/

# Install rust
# sudo pacman -S rustup
# rustup default stable

# Install Paru, an AUR package helper.
# sudo pacman -S --needed base-devel
# cd /tmp
# git clone https://aur.archlinux.org/paru.git
# cd paru
# makepkg -si
# cd ..
# rm -rf paru
# cd $SCRIPT_DIR

# Hyprland install
# sudo pacman -S hyprland
# sudo pacman -S kitty

# Desktop manager
# paru -S greetd-regreet-git
# sudo ln -s ${SCRIPT_DIR}/greetd/hyprland.lua /etc/greetd/hyprland.lua 
# echo "Set command in /etc/greetd/config.toml as: dbus-run-session start-hyprland -- -c /etc/greetd/hyprland.lua"
# sudo systemctl enable greetd.service

# Screensharing, file picker handling, etc.
# sudo pacman -S xdg-desktop-portal-hyprland hyprshutdown

# QT support
# sudo pacman -S qt6-wayland qt5-wayland

# Font
# sudo pacman -S ttf-jetbrains-mono-nerd

# Clipboard
# sudo pacman -S wl-clipboard

# Filepicker
# sudo pacman -S dolphin

# Desktop shell
# sudo pacman -S noctalia

# Firmware updater
# sudo pacman -S fwupd
