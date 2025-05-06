#!/bin/bash

xdg-mime default shotwell-viewer.desktop image/png image/jpeg image/jpg
xdg-mime default dekuve-deb-installer.desktop application/vnd.debian.binary-package application/x-deb

flatpak override --user --filesystem=$HOME/.themes
flatpak override --user --filesystem=$HOME/.icons
flatpak override --user --env=GTK_THEME=DEKUVE
flatpak override --user --env=ICON_THEME=DEKUVE

AUTOSTART_FILE="$HOME/.config/autostart/custom-flatpak-setup.desktop"

if [ -f "$AUTOSTART_FILE" ]; then
    rm "$AUTOSTART_FILE"
fi

echo "Команды выполнены и файл автозагрузки удален."

