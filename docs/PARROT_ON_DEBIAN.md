# Configurar Parrot sobre Debian

### Repositorios

**Agregar al final**

    sudo nano /etc/apt/sources.list
>
    deb https://deb.parrot.sh/parrot lts main contrib non-free
    deb https://deb.parrot.sh/parrot lts-updates main contrib non-free
    deb https://deb.parrot.sh/parrot lts-backports main contrib non-free
    deb https://deb.parrot.sh/parrot lts-security main contrib non-free

**Actualizar**

    sudo apt update && sudo apt upgrade -y

**Instalar herramientas parrot**

    sudo apt install parrot-tools-full

**remover dependencias**

    sudo apt remove pipewire-alsa pipewire-audio
>
    sudo apt autoremove


