#!/usr/bin/env bash

sudo apt install qt5-style-kvantum gnome-software-plugin-flatpak flatpak gnome-core gnome-shell-extension-manager gnome-tweaks && sudo apt purge task-gnome-desktop
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.kde.KStyle.Kvantum
kvantummanager -set KvGnomeDark
