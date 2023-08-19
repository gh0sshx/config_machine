#!/bin/bash

echo "[+] Configurando zsh en usuario"

chsh -s /bin/zsh

cd $HOME 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo -e "\n\n"
echo "#inherit directory" >> $HOME/.zshrc
echo "if [ \$TILIX_ID ] || [ \$VTE_VERSION ]; then" >> $HOME/.zshrc
echo "    source /etc/profile.d/vte.sh" >> $HOME/.zshrc
echo "fi" >> $HOME/.zshrc

sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh

# sudo python3 omz_root.py