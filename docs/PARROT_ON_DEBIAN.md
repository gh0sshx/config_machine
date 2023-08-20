# Configurar Parrot sobre Debian

### Repositorios

**Agregar al final**

    sudo nano /etc/apt/sources.list
>    
    ## stable repository
    #deb [trusted=yes] http://archive.parrot.sh/parrot rolling main contrib non-free
    #deb [trusted=yes] http://archive.parrot.sh/parrot rolling-security main contrib non-free
    #deb-src [trusted=yes] http://mirror.parrot.sh/parrot rolling main contrib non-free
    #deb-src [trusted=yes] http://mirror.parrot.sh/parrot rolling-security main contrib non-free
>
    # OLD REPO
    deb [trusted=yes] https://deb.parrot.sh/parrot lts main contrib non-free
    deb [trusted=yes] https://deb.parrot.sh/parrot lts-updates main contrib non-free
    deb [trusted=yes] https://deb.parrot.sh/parrot lts-backports main contrib non-free
    deb [trusted=yes] https://deb.parrot.sh/parrot lts-security main contrib non-free

**Actualizar**

    sudo apt update

**Instalar herramientas parrot**

    sudo apt install parrot-tools-full

**remover dependencias**

    sudo apt remove pipewire-alsa pipewire-audio
>
    sudo apt autoremove
>
    sudo apt update && sudo apt upgrade -y

**en caso de que la instalacion anterior remueva gnome-extensions**

    sudo apt install gnome-tweaks
>
    sudo apt install gnome-shell-extensions

**OPENVPN**

    sudo apt install openvpn


