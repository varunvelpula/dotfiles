#!/bin/bash

# Running updates
sudo -Sk update; sudo -Sk apt upgrade


# Google Chrome install
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt -f install

# Useful applications
sudo apt install curl

# Other applications for i3
sudo apt install -y i3 i3lock feh polybar picom playerctl terminator pavucontrol network-manager nano zip htop lxappearance rofi thunar lm-sensors

# Spotify installation
curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

# Installing noto/jetbrains fonst ??