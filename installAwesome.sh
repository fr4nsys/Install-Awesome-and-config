sudo pacman -S git unzip kitty gedit firefox zip --noconfirm

git clone https://aur.archlinux.org/paru-bin.git
chmod 777 paru-bin
cd paru-bin || exit
makepkg -si --noconfirm
cd ..
rm -rf paru-bin/

paru -S picom-ibhagwan-git todo-bin alacritty rofi todo-bin acpi acpid \
wireless_tools jq inotify-tools polkit-gnome xdotool xclip maim \
brightnessctl alsa-utils alsa-tools pulseaudio lm_sensors \
mpd mpc mpdris2 ncmpcpp playerctl zsh-autosuggestions zsh-syntax-highlighting --needed --noconfirm 

mkdir /home/$USER/.todo/

systemctl --user enable mpd.service
systemctl --user start mpd.service
sudo systemctl enable acpid.service
sudo systemctl start acpid.service

paru -S awesome-git --needed --noconfirm

paru -S ttf-material-design-icons nerd-fonts-complete --needed --noconfirm

mv ./files/iconmoon/*.ttf ~/fonts 

cp -r ./files/config/* ~/.config/
cp -r ./files/misc/. ~/
