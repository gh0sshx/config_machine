#!/bin/bash

echo -e "[+] creando directorios"
mkdir $HOME/.themes >/dev/null
mkdir $HOME/.icons >/dev/null

echo -e "[+] Descomprimiendo"
unzip customize.zip -d $HOME/Documents >/dev/null
cd $HOME/Documents/customize >/dev/null


mkdir -p $HOME/Documents/customize/Colloid && tar -xvf Colloid.tar.xz -C $HOME/Documents/customize/Colloid >/dev/null
cp -r $HOME/Documents/customize/Colloid/* $HOME/.themes/ >/dev/null

mkdir -p $HOME/Documents/customize/Marble-shell && tar -xvf Marble-shell.tar.xz -C $HOME/Documents/customize/Marble-shell >/dev/null
cp -r $HOME/Documents/customize/Marble-shell/* $HOME/.themes/ >/dev/null

mkdir -p $HOME/Documents/customize/Orchis-Grey && tar -xvf Orchis-Grey.tar.xz -C $HOME/Documents/customize/Orchis-Grey >/dev/null
cp -r $HOME/Documents/customize/Orchis-Grey/* $HOME/.themes/ >/dev/null

mkdir -p $HOME/Documents/customize/Orchis-Teal && tar -xvf Orchis-Teal.tar.xz -C $HOME/Documents/customize/Orchis-Teal >/dev/null
cp -r $HOME/Documents/customize/Orchis-Teal/* $HOME/.themes/ >/dev/null

unzip kora-grey-1-6-0.zip >/dev/null
cp -r $HOME/Documents/customize/kora_grey/* $HOME/.icons/ >/dev/null

cp -r $HOME/Documents/customize/Colloid/Colloid-Dark/gtk-4.0/* $HOME/.config/gtk-4.0

echo -e "[+] Cerrando sesión"
gnome-session-quit