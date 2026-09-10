#!/bin/bash

# Setup script starting from the second step of general recs in the arch wiki.
SCRIPT_PATH=$(realpath $0)
SCRIPT_DIR=$(dirname $SCRIPT_PATH)

# Install sudo and editor required for visudo
# pacman -S sudo vi
# read -p "User name: " UNAME
# echo "${UNAME}	ALL=(ALL) ALL" > /etc/sudoers.d/${UNAME}

# Sof firmware for laptop (audio firmware)
# pacman -S sof-firmware 

# Initiate Reflector
# pacman -S reflector
# systemctl enable reflector.timer

# Install all intel drivers.
# pacman -Syu mesa vulkan-intel intel-media-driver

# Install Nvidia drivers
# pacman -Syu nvidia-open nvidia-utils nvidia-settings

# Should not be necessary with the command following this one.
# echo "options nvidia_drm modeset=1" > /etc/modprobe.d/nvidia.conf

# echo "Now add: i915 nvidia nvidia_modeset nvidia_uvm nvidia_drm to the modules in /etc/mkinitcpio.conf
# mkinitcpio -P
# reboot

