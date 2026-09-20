#!/bin/bash

# Setup script starting from the second step of general recs in the arch wiki.
SCRIPT_PATH=$(realpath $0)
SCRIPT_DIR=$(dirname $SCRIPT_PATH)

# Create necessary directories
# mkdir ~/Pictures/Wallpapers

# Create hook for saving installed packages
# sudo mkdir /etc/pacman.d/hooks
# sudo ln -s ${SCRIPT_DIR}/pkglist.hook -t /etc/pacman.d/hooks/

# Install rust
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

# Install all aur packages
# paru -S --needed $(pkglist_aur.txt) 

# Display manager
# paru -S greetd-regreet-git
# sudo ln -s ${SCRIPT_DIR}/greetd/hyprland.lua /etc/greetd/hyprland.lua 
# echo "Set command in /etc/greetd/config.toml as: dbus-run-session start-hyprland -- -c /etc/greetd/hyprland.lua"
# sudo systemctl enable greetd.service

# Enable power saving services
# sudo systemctl enable --now tlp.service
# sudo systemctl enable --now tlp-pd.service
# sudo systemctl enable NetworkManager-dispatcher.service
# sudo systemctl mask systemd-rfkill.service systemd-rfkill.socket

# Other services
# systemctl --user enable syncthing.service
# sudo systemctl enable bluetooth.service

# Noctalia Specific
## USB detection
# noctalia msg plugins enable aristides/udiskie
# noctalia msg plugins enable noctalia/wallhaven
