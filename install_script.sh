#!/bin/bash

echo -e "\n------------------ configure nx server  ------------------"

sed -i 's/#EnableClipboard both/EnableClipboard both/g' /usr/NX/etc/server.cfg
sed -i 's/#VirtualDesktopSharing 1/VirtualDesktopSharing 1/g' /usr/NX/etc/server.cfg
sed -i 's/#VirtualDesktopAuthorization 1/VirtualDesktopAuthorization 0/g' /usr/NX/etc/server.cfg

echo -e "\n------------------ copy autostart script  ------------------"

cp /bliss_webinar/assets/config-demo-session.desktop /etc/xdg/autostart/
