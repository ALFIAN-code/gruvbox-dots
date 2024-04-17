#!/bin/bash


#instaling depecency ============================================================
cat << "EOF"

*********************************************************
*                                                       *
*    _                           _                 _    *
*   | |__  _   _ _ __   ___ _ __| | __ _ _ __   __| |   *
*   | '_ \| | | | '_ \ / _ \ '__| |/ _` | '_ \ / _` |   *
*   | | | | |_| | |_) |  __/ |  | | (_| | | | | (_| |   *
*   |_| |_|\__, | .__/ \___|_|  |_|\__,_|_| |_|\__,_|   *
*        _ |___/|_|                                     *
*     __| | ___ | |_ ___                                *
*    / _` |/ _ \| __/ __|                               *
*   | (_| | (_) | |_\__ \                               *
*    \__,_|\___/ \__|___/                               *
*                                                       *
*********************************************************
EOF

sudo pacman -Syyu


#instaling depecency ============================================================
cat << "EOF"

 _           _        _ _                                
(_)_ __  ___| |_ __ _| | |                               
| | '_ \/ __| __/ _` | | |                               
| | | | \__ \ || (_| | | |                               
|_|_|_|_|___/\__\__,_|_|_|       _                       
  __| | ___ _ __   ___ _ __   __| | ___ _ __   ___ _   _ 
 / _` |/ _ \ '_ \ / _ \ '_ \ / _` |/ _ \ '_ \ / __| | | |
| (_| |  __/ |_) |  __/ | | | (_| |  __/ | | | (__| |_| |
 \__,_|\___| .__/ \___|_| |_|\__,_|\___|_| |_|\___|\__, |
           |_|                                     |___/ 
EOF

yay -S dolphin fish kitty grimblast swappy swww swaylock ags neofetch gvfs gnome-bluetooth-3.0 pipewire-pulse NetworkManager hyprland spotify android-studio visual-studio-code-bin waypaper snapd grim swappy slurp sddm sddm-kcm qt6-svg qt6-declarative




#install theme ============================================================

cat << "EOF"

 _           _        _ _      _   _                         
(_)_ __  ___| |_ __ _| | |    | |_| |__   ___ _ __ ___   ___ 
| | '_ \/ __| __/ _` | | |    | __| '_ \ / _ \ '_ ` _ \ / _ \
| | | | \__ \ || (_| | | |    | |_| | | |  __/ | | | | |  __/
|_|_| |_|___/\__\__,_|_|_|     \__|_| |_|\___|_| |_| |_|\___|

EOF
cd hyprland-gruvbox-dots

cp -r .config/* ~/.config/
cp -r fonts/* ~/.local/share/fonts/
cp -r catppuccin-mocha /usr/share/sddm/themes/

sed -i 's/kata_lama/kata_baru/g' nama_file


#install fish ============================================================
echo "


changing shell to fish ...

" 
chsh -s $(which fish)

echo "

desktop="Hyprland"

# Memeriksa desktop environment
if [ "$XDG_CURRENT_DESKTOP" == "$desktop" ]; then
    export QT_STYLE_OVERRIDE=kvantum
fi
"


#configure snapd ============================================================
echo "


configure snapd ...

" 
sudo systemctl enable --now snapd.socket
sudo systemctl enable --now snapd.apparmor.service


#install flutter ============================================================
echo "


install flutter ...

" 
snap install flutter --classic
flutter sdk-path


