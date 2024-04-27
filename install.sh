#install dependencies
install_dependencies() {
    sudo pacman -Syyu brightnessctl yay rofi v4l-utils v4l2loopback-utils v4l2loopback-dkms xdg-desktop-portal-hyprland xwaylandvideobridge dunst pamixer qt5-imageformats ffmpegthumbs kde-cli-tools kservice5 dolphin kitty grimblast swappy swww swaylock aylurs-gtk-shell neofetch gvfs gnome-bluetooth-3.0 pipewire-pulse NetworkManager hyprland android-studio visual-studio-code-bin waypaper snapd grim swappy slurp qt6-svg qt6-declarative kvantum-qt5 qt5-wayland qt6-wayland qt6ct qt5ct nwg-look blueman network-manager-applet curl
}

# Function to display the menu
sddm_menu() {
    cat <<EOF


Options:
1. Install SDDM theme
2. Skip SDDM theme installation
EOF
    
    read -p "Enter your choice: " choice
    case $choice in
        1)
            install_sddm_theme
        ;;
        2)
            echo "Skipping SDDM theme installation."
        ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 2."\
        ;;
    esac
}

install_sddm_theme(){
    yay -S sddm sddm-kcm
    sudo systemctl disable gdm && sudo systemctl enable sddm
    sudo cp -r catppuccin-mocha /usr/share/sddm/themes/
    
    sudo sh -c 'echo "
[Theme]
Current=catppuccin-mocha
    " >> /etc/sddm.conf'
}

install_theme() {
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
        cp -r fonts/* ~/.local/share/fonts/
    fi
    
    # grub ===============================
    cd grub-theme
    sudo cp tartarus -r /usr/share/grub/themes/
    sudo sh -c "echo "GRUB_THEME="/usr/share/grub/themes/tartarus/theme.txt"" >> /etc/default/grub"
    sudo grub-mkconfig -o /boot/grub/grub.cfg
    cd ..
    
    install_sddm_menu
    
    sudo sh -c  'echo "
desktop="Hyprland"

# Memeriksa desktop environment
if [ "$XDG_CURRENT_DESKTOP" == "$desktop" ]; then
    export QT_STYLE_OVERRIDE=kvantum
fi
    " >> /etc/environment'
    
    pids=$(pgrep firefox)
    if [ -n "$pids" ]; then
        echo "firefox is running, killing the process..."
        kill $pids
    else
        echo "Firefox is not running, continue the installation..."
    fi
    
    cd gtk-theme
    ./install.sh
    ./tweaks.sh -f alt
    cd ..
    
    cd gtk-icon
    ./install.sh
    cd ..
    
    cd kde-theme
    ./install.sh
    cd ..
}

flutter_menu(){
        cat <<EOF



Options:
1. Install flutter
2. Skip flutter installation
EOF
    
    read -p "Enter your choice: " choice
    case $choice in
        1)
            install_flutter
        ;;
        2)
            echo "Skipping flutter installation."
        ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 2."\
        ;;
    esac
}


install_flutter(){
    cat << "EOF"
 _           _        _ _    __ _       _   _
(_)_ __  ___| |_ __ _| | |  / _| |_   _| |_| |_ ___ _ __
| | '_ \/ __| __/ _` | | | | |_| | | | | __| __/ _ \ '__|
| | | | \__ \ || (_| | | | |  _| | |_| | |_| ||  __/ |
|_|_| |_|___/\__\__,_|_|_| |_| |_|\__,_|\__|\__\___|_|

EOF
    
    sudo snap install flutter --classic
    flutter sdk-path
}


install_fish(){
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
    yay -S fish pokemon-colorscripts-git
    
    curl -sS https://starship.rs/install.sh | sh
    echo "starship init fish | source" >> ~/.config/fish/config.fish
    echo "set fish_greeting" >> ~/.config/fish/config.fish
    chsh -s $(which fish)
}

install_snapd(){
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
    echo "enable snapd.socket"
    sudo systemctl enable --now snapd.socket
    
    echo "enable snapd.apparmor.service"
    sudo systemctl enable --now snapd.apparmor.service
    
    ec
    sudo ln -s /var/lib/snapd/snap /snap
}

install_spicetify(){
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
    
    yay -S spotify
    sudo chmod a+wr /opt/spotify
    sudo chmod a+wr /opt/spotify/Apps -R
    
    curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh
    spicetify backup apply
    spicetify apply
}

setup_folder(){
    
    echo "




create alfian folder......
    "
    username=$USER
    mkdir ~/$username'Space'
    
    cd ~/$username'Space'
    mkdir kampus ngoding
    
    cd ngoding
    mkdir flutter
    
    cd ..
    cd kampus
    mkdir web c_lang
    cd web
}

main() {
    install_dependencies
    install_theme
    sddm_menu
    install_fish
    install_snapd
    install_spicetify
    flutter_menu
    setup_folder
    
    echo "


to do :
 - find nice wallpaper, and set it with waypaper
 - open "GTK setting" and change icon theme to bigsur

    "
    exit 0
    
}

main