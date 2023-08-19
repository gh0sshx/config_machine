# config_machine
Configure my new machine

**Actualizar**

    sudo apt update && sudo apt upgrade -y

### TILIX y zsh

    sudo apt install git curl tilix zsh -y
>
    chsh -s /bin/zsh
>
    sudo -i
>
    chsh -s /bin/zsh
>
    exit

**Personalizacion**

    git clone https://github.com/gh0sshx/config_machine.git && cd config_machine/
>
    chmod +x decompress_and_move.sh && ./decompress_and_move.sh
>
    chmod +x configure_omz.sh && ./configure_omz.sh
>
    sudo python3 omz_root.py

**color a terminal**

    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting

**Editar archivo**

    nano ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

**copiar y pegar en archivo**

    ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
    ZSH_HIGHLIGHT_STYLES[default]=none
    ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=white,underline
    ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=cyan,bold
    ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=green,underline
    ZSH_HIGHLIGHT_STYLES[global-alias]=fg=green,bold
    ZSH_HIGHLIGHT_STYLES[precommand]=fg=green,underline
    ZSH_HIGHLIGHT_STYLES[commandseparator]=fg=blue,bold
    ZSH_HIGHLIGHT_STYLES[autodirectory]=fg=green,underline
    ZSH_HIGHLIGHT_STYLES[path]=bold
    ZSH_HIGHLIGHT_STYLES[path_pathseparator]=
    ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]=
    ZSH_HIGHLIGHT_STYLES[globbing]=fg=blue,bold
    ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=blue,bold
    ZSH_HIGHLIGHT_STYLES[command-substitution]=none
    ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]=fg=magenta,bold
    ZSH_HIGHLIGHT_STYLES[process-substitution]=none
    ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]=fg=magenta,bold
    ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=green
    ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=green
    ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
    ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]=fg=blue,bold
    ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=yellow
    ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=yellow
    ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]=fg=yellow
    ZSH_HIGHLIGHT_STYLES[rc-quote]=fg=magenta
    ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=magenta,bold
    ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=magenta,bold
    ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]=fg=magenta,bold
    ZSH_HIGHLIGHT_STYLES[assign]=none
    ZSH_HIGHLIGHT_STYLES[redirection]=fg=blue,bold
    ZSH_HIGHLIGHT_STYLES[comment]=fg=black,bold
    ZSH_HIGHLIGHT_STYLES[named-fd]=none
    ZSH_HIGHLIGHT_STYLES[numeric-fd]=none
    ZSH_HIGHLIGHT_STYLES[arg0]=fg=cyan
    ZSH_HIGHLIGHT_STYLES[bracket-error]=fg=red,bold
    ZSH_HIGHLIGHT_STYLES[bracket-level-1]=fg=blue,bold
    ZSH_HIGHLIGHT_STYLES[bracket-level-2]=fg=green,bold
    ZSH_HIGHLIGHT_STYLES[bracket-level-3]=fg=magenta,bold
    ZSH_HIGHLIGHT_STYLES[bracket-level-4]=fg=yellow,bold
    ZSH_HIGHLIGHT_STYLES[bracket-level-5]=fg=cyan,bold
    ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]=standout

**Editar y agregar plugins a zshrc, salir o actualizar zshrc**

    nano $HOME/.zshrc
>
    sudo zsh-syntax-highlighting
>
    source $HOME/.zshrc

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


    