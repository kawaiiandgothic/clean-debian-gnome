#!/usr/bin/env bash
sudo apt purge aisleriot baobab cheese eog evince evolution five-or-more four-in-a-row gnome-2048 gnome-calendar gnome-chess gnome-clocks gnome-color-manager gnome-contacts gnome-documents gnome-klotski gnome-logs gnome-mahjongg gnome-maps gnome-mines gnome-music gnome-nibbles gnome-robots gnome-sound-recorder sudoku gnome-taquin gnome-tetravex gnome-todo gnome-weather hitori iagno im-config libreoffice-calc libreoffice-common libreoffice-draw libreoffice-impress libreoffice-writer lightsoff malcontent quadrapassel rhythmbox seahorse shotwell simple-scan software-properties-gtk swell-foop synaptic tali totem yelp
 qgnomeplatform-qt5
[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"
apt install qt5-style-kvantum gnome-software-plugin-flatpak flatpak-shell-extension-manager gnome-tweaks
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.kde.KStyle.Kvantum
kvantummanager -set KvGnomeDark
flatpak override --filesystem=xdg-config/Kvantum:ro
echo "run systemctl reboot for changes to take effect"
