#!/bin/bash

echo "Removing modules"
yes | sudo pacman -Rdds zfs-utils-7 zfs-dkms-7 spl-utils-7 spl-dkms-7
git pull origin master
echo "Renewing kernel"
sudo pacman -Sy --needed linux linux-headers --noconfirm
echo "Building spl"
cd spl-dkms-7
updpkgsums
yes | makepkg -si
echo "Building zfs"
cd ../zfs-dkms-7
updpkgsums
yes | makepkg -si
cd ..
echo "DONE"
