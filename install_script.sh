#!/bin/bash

echo -e "\n------------------ configure nx server  ------------------"

sed -i 's/#EnableClipboard both/EnableClipboard both/g' /usr/NX/etc/server.cfg
sed -i 's/#VirtualDesktopSharing 1/VirtualDesktopSharing 1/g' /usr/NX/etc/server.cfg
sed -i 's/#VirtualDesktopAuthorization 1/VirtualDesktopAuthorization 0/g' /usr/NX/etc/server.cfg

echo -e "\n------------------ configure desktop  ------------------"
sudo -u nomachine gsettings set org.gnome.desktop.wm.preferences theme 'TraditionalOk'
sudo -u nomachine gsettings set org.mate.background picture-filename bliss_webinar/bliss/bliss_logo_screen.svg
