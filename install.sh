#!/bin/bash

sudo pacman -S git i3-wm i3status i3lock dmenu xorg-server xorg-xinit feh alacritty sddm picom firefox thunar

#systemctl enable --now NetworkManager
#sudo pacman -S virtualbox-guest-utils
#VBoxClient-all

mkdir -p ~/.config/i3
if [ ! -f ~/.config/i3/config ]; then
    cp /etc/i3/config ~/.config/i3/config
fi

echo "exec i3" > ~/.xinitrc
echo 'for_window [class="^.*"] border pixel 2' >> ~/.config/i3/config
echo 'gaps inner 10' >> ~/.config/i3/config
echo 'gaps outer 5' >> ~/.config/i3/config
echo 'exec_always --no-startup-id picom -f' >> ~/.config/i3/config
mkdir ~/.config/alacritty/
git clone https://github.com/chuvachellaV1/arch-i3-conf-install
cd arch-i3-conf-install
mv alacritty.toml ~/.config/alacritty/




sudo systemctl enable --now sddm.service
