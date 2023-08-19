# config_machine
Configure my new machine

**Actualizar**

    sudo apt update && sudo apt upgrade -y

### TILIX y zsh

    sudo apt install git curl tilix zsh -y
>
    chmod +x configure_omz.sh && ./configure_omz.sh
>

**Personalizacion**

    git clone https://github.com/gh0sshx/config_machine.git
>
    chmod +x decompress_and_move.sh && ./decompress_and_move.sh

### Fonts

**Desde la [nerdfonts](https://www.nerdfonts.com/font-downloads) descargar [Symbols Nerd Fonts](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/NerdFontsSymbolsOnly.zip)**

**descomprimir**

    unzip $HOME/Downlads/NerdFontsSymbolsOnly.zip -d NerdFonts

**crear y mover archivos**

    mkdir $HOME/.local/share/fonts
>
    cp $HOME/Downlads/NerdFonts/* $HOME/.local/share/fonts/
>
    fc-cache -f -v

**(opcional) [fonts](https://www.pling.com/p/1965520/)**



### Desactivar autoasignación de nombres de interfaz de red

**Editar el archivo grub**

    nano /etc/default/grub

**buscar la línea que comienza con ‘GRUB_CMDLINE_LINUX_DEFAULT’ y agregar al final antes de cerrar las comillas**

    net.ifnames=0

**Guarda y cierra el archivo, actualiza el archivo grub**

    sudo update-grub

**Enmascara el archivo.link de udev para la política predeterminada**

    sudo ln -s /dev/null /etc/systemd/network/99-default.link1

**Reiniciar Sistema**

    sudo reboot

### Instalar Extensiones

    Caffeine
>
    [QSTweak] Quick Setting Tweaker
>
    Clipboard Indicator 
>
    Executor
>
    Improved Workspace Indicator
>
    Just Perfection

**Opcional**
>
    Wallpaper Switcher 
> Hacer ajustes

**Executor**
>target

    if [[ $(cat /home/ghost/VPN/.target) == "" ]]; then echo "󰓾 ---.---.---.---"; else echo "󰓾 " && cat /home/ghost/VPN/.target; fi && echo "   "

>VPN

    if [[ $(ip -4 addr show tun0 2>&1) == *"does not exist." ]]; then echo "󱘖 VPN Not Online"; else echo "tun0  " && ip -4 addr show tun0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}'; fi && echo "   "

>LAN

    if [[ $(ip addr show dev eth0 | grep 'inet ' | awk '{print $2}' | cut -f1 -d'/') == "" ]]; then echo "eth0󰈂"; else echo "eth0 󰈀 " && ip -4 addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}'; fi && echo "   "

>WIFI

    if [[ $(ip addr show dev wlan0 | grep 'inet ' | awk '{print $2}' | cut -f1 -d'/') == "" ]]; then echo "wlan0󰖪"; else echo "wlan0 󱚻 " && ip -4 addr show wlan0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}';fi && echo "   "

>HOSTNAME

    echo "󰕥 "; cat /etc/hostname

### Mover entre escritorio GNOME

**Para mover applicaciones entre workspaces con atajos de teclado**

    gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "['<Super><Alt>Right']"
>
    gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left "['<Super><Alt>Left']"

**Para moverse dentro de los workspaces**

    gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Ctrl><Super>Left']"
>
    gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Ctrl><Super>Right']"


    