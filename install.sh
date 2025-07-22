#!/bin/bash

echo
echo "Arch Rice installation script"
echo "by ShadowNetter"
echo
read -p "press enter to start: "
echo
echo "installing required packages..."
sudo pacman -S bspwm sxhkd polybar nitrogen git fastfetch rofi kitty ttf-jetbrains-mono-nerd ttf-martian-mono-nerd ttf-nerd-fonts-symbols lightdm-gtk-greeter brightnessctl pamixer python-pipx
echo
echo "done"
echo
echo "installing YAY..."
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si
cd ~/
echo
echo "done"
echo
echo "installing required packages with YAY..."
yay -S cava tty-clock lowfi rofi-nordvpn-git
echo
echo "done"
echo
echo "cloning repo..."
git clone https://github.com/ShadowNetter-Official/Arch-Rice.git
cd Arch-Rice
echo
echo "done"
echo
echo "configuring BSPWM and other tools..."
mkdir ~/.config/bspwm
mkdir ~/.config/sxhkd
mkdir ~/.config/rofi
mkdir ~/.config/polybar
mkdir ~/wallpapers
mkdir ~/.config/kitty
cp config/bspwm/bspwmrc ~/.config/bspwm/
cp config/sxhkd/sxhkdrc ~/.config/sxhkd/
cp config/polybar/* ~/.config/polybar/
cp wallpapers/* ~/wallpapers/
cp config/kitty/kitty.conf ~/.config/kitty/
cp config/rofi/config.rasi ~/.config/rofi/
chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/sxhkd/sxhkdrc
chmod +x ~/.config/polybar/launch.sh
sudo systemctl enable lightdm.service
pipx install git+https://github.com/rmaake1/terminal-rain-lightning.git
pipx ensurepath
wget https://raw.githubusercontent.com/unxsh/nitch/main/setup.sh && sh setup.sh
echo
echo "done"
echo
echo "you can now reboot your system"

