#!/bin/bash

#systemctl enable --now NetworkManager

#sudo pacman -S virtualbox-guest-utils
#VBoxClient-all

sudo pacman -S i3-wm i3status i3lock dmenu xorg-server xorg-xinit feh alacritty sddm
sudo systemctl enable --now sddm.service
echo "exec i3" > ~/.xinitrc
echo 'for_window [class="^.*"] border pixel 2' >> ~/.config/i3/config
echo 'gaps inner 10' >> ~/.config/i3/config
echo 'gaps outer 5' >> ~/.config/i3/config
startx
