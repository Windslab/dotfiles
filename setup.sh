#!/bin/sh

sudo curl -o /etc/pacman.d/mirrorlist https://archlinux.org/mirrorlist/all/https/
sudo sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist
sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
if ! pacman -Qi pacman-contrib > /dev/null; then yes | sudo pacman -Sy pacman-contrib; fi # Rankmirrors
rankmirrors -n 6 /etc/pacman.d/mirrorlist.backup | sudo tee /etc/pacman.d/mirrorlist

if ! pacman -Qi git > /dev/null; then yes | sudo pacman -S git; fi # Git
yes | rm -rf ~/
git clone https://github.com/Windslab/ArchSpace.git ~/
sh ~/.config/i3blocks/system/setup.sh
yes | rm -rf /var/tmp/setup.sh
