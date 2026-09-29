#!/bin/bash

# Setup script starting from the second step of general recs in the arch wiki.
SCRIPT_PATH=$(realpath $0)
SCRIPT_DIR=$(dirname $SCRIPT_PATH)

# Nvidia prevent system state destruction when not in use.
# sudo systemctl enable nvidia-persistenced.service

# Simple firewall setup
# ufw default deny
# ufw allow from 192.168.0.0/24
# ufw limit ssh

# Batter saving features
# sudo tlp setcharge 75 80

# Create necessary directories
# mkdir ~/Pictures/Wallpapers
# mkdir ~/Pictures/Screenshots

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
# paru -S noctalia-greeter
# echo "Set command in /etc/greetd/config.toml as output of command -v noctalia-greeter-session"
# sudo systemctl enable greetd.service

# Enable power saving services
# sudo systemctl enable --now tlp.service
# sudo systemctl enable --now tlp-pd.service
# sudo systemctl enable NetworkManager-dispatcher.service
# sudo systemctl mask systemd-rfkill.service systemd-rfkill.socket

# Other services
# systemctl --user enable syncthing.service
# sudo systemctl enable bluetooth.service

# echo "May need to add timeout to informants feed file to switch from ipv6 to ipv4."

# Noctalia Specific
## USB detection
# noctalia msg plugins enable aristides/udiskie
# noctalia msg plugins enable noctalia/wallhaven
# gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3'

# Show battery fix
