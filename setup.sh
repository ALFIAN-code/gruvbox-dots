#!/bin/bash
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

#instaling depecency ============================================================
cat << "EOF"

                 _       _       
 _   _ _ __   __| | __ _| |_ ___ 
| | | | '_ \ / _` |/ _` | __/ _ \
| |_| | |_) | (_| | (_| | ||  __/
 \__,_| .__/ \__,_|\__,_|\__\___|
 ___ _|_|_ ___| |_ ___ _ __ ___  
/ __| | | / __| __/ _ \ '_ ` _ \ 
\__ \ |_| \__ \ ||  __/ | | | | |
|___/\__, |___/\__\___|_| |_| |_|
     |___/                       


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

yay -S pamixer qt5-imageformats ffmpegthumbs kde-cli-tools kservice5 xampp dolphin fish kitty grimblast swappy swww swaylock ags neofetch gvfs gnome-bluetooth-3.0 pipewire-pulse NetworkManager hyprland spotify android-studio visual-studio-code-bin waypaper snapd grim swappy slurp sddm sddm-kcm qt6-svg qt6-declarative kvantum-qt5 qt5-wayland qt6-wayland qt6ct qt5ct nwg-look blueman network-manager-applet curl
  



#install theme ============================================================

cat << "EOF"

 _           _        _ _      _   _                         
(_)_ __  ___| |_ __ _| | |    | |_| |__   ___ _ __ ___   ___ 
| | '_ \/ __| __/ _` | | |    | __| '_ \ / _ \ '_ ` _ \ / _ \
| | | | \__ \ || (_| | | |    | |_| | | |  __/ | | | | |  __/
|_|_| |_|___/\__\__,_|_|_|     \__|_| |_|\___|_| |_| |_|\___|


EOF

cp -r .config/* ~/.config/

# Menjalankan perintah
cp -r fonts/* ~/.local/share/fonts/

# Memeriksa kode keluaran perintah sebelumnya
if [ $? -ne 0 ]; then
    echo "Perintah gagal. Menjalankan perintah alternatif..."

    # Menjalankan perintah alternatif
    mkdir ~/.local/share/fonts/
fi

#sddm ===============================

sudo systemctl disable gdm && sudo systemctl enable sddm
sudo cp -r catppuccin-mocha /usr/share/sddm/themes/

sudo sh -c 'echo "
[Theme]
Current=catppuccin-mocha
" >> /etc/sddm.conf'

sudo sh -c  'echo "
desktop="Hyprland"

# Memeriksa desktop environment
if [ "$XDG_CURRENT_DESKTOP" == "$desktop" ]; then
    export QT_STYLE_OVERRIDE=kvantum
fi
" >> /etc/environment'


#install fish ============================================================
cat << "EOF"
                        __ _                       
  ___ ___  _ __  _ __  / _(_) __ _ _   _ _ __ ___  
 / __/ _ \| '_ \| '_ \| |_| |/ _` | | | | '__/ _ \ 
| (_| (_) | | | | | | |  _| | (_| | |_| | | |  __/ 
 \___\___/|_| |_|_| |_|_| |_|\__, |\__,_|_|  \___| 
 / _(_)___| |__    ___| |__  |___/ | |             
| |_| / __| '_ \  / __| '_ \ / _ \ | |             
|  _| \__ \ | | | \__ \ | | |  __/ | |             
|_| |_|___/_| |_| |___/_| |_|\___|_|_|   


EOF

curl -sS https://starship.rs/install.sh | sh
echo "starship init fish | source" >> ~/.config/fish/config.fish
sudo chsh -s $(which fish)


#configure snapd ============================================================
cat << "EOF"
                                               
                        __ _                       
  ___ ___  _ __  _ __  / _(_) __ _ _   _ _ __ ___  
 / __/ _ \| '_ \| '_ \| |_| |/ _` | | | | '__/ _ \ 
| (_| (_) | | | | | | |  _| | (_| | |_| | | |  __/ 
 \___\___/|_| |_|_| |_|_| |_|\__, |\__,_|_|  \___| 
 ___ _ __   __ _ _ __   __| ||___/                 
/ __| '_ \ / _` | '_ \ / _` |                      
\__ \ | | | (_| | |_) | (_| |                      
|___/_| |_|\__,_| .__/ \__,_|                      
                |_|                                   



EOF


sudo systemctl enable --now snapd.socket
sudo systemctl enable --now snapd.apparmor.service
sudo ln -s /var/lib/snapd/snap /snap

#install spicetify ==========================================================
cat << "EOF"
 _           _        _ _             
(_)_ __  ___| |_ __ _| | |            
| | '_ \/ __| __/ _` | | |            
| | | | \__ \ || (_| | | |            
|_|_| |_|___/\__\__,_|_|_|_  __       
 ___ _ __ (_) ___ ___| |_(_)/ _|_   _ 
/ __| '_ \| |/ __/ _ \ __| | |_| | | |
\__ \ |_) | | (_|  __/ |_| |  _| |_| |
|___/ .__/|_|\___\___|\__|_|_|  \__, |
    |_|                         |___/   

EOF

sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R

curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh
spicetify backup apply
spicetify apply


#install flutter ============================================================
cat << "EOF"
 _           _        _ _    __ _       _   _            
(_)_ __  ___| |_ __ _| | |  / _| |_   _| |_| |_ ___ _ __ 
| | '_ \/ __| __/ _` | | | | |_| | | | | __| __/ _ \ '__|
| | | | \__ \ || (_| | | | |  _| | |_| | |_| ||  __/ |   
|_|_| |_|___/\__\__,_|_|_| |_| |_|\__,_|\__|\__\___|_|   

EOF

snap install flutter --classic
flutter sdk-path


echo "




create alfian folder......
"
mkdir ~/alfianSpace 
cd ~/alfianSpace
mkdir kampus ngoding

cd ngoding
mkdir flutter

cd .. 
cd kampus
mkdir web c_lang 
cd web

sudo chmod 777 /opt/lampp/htdocs
ln -s /opt/lampp/htdocs ~/alfianSpace/kampus/web/ 



