#!/bin/bash

echo -e "\n------------------ bliss startup script -v3----------------"
echo -e "\n------------------ start x1vnc----------------"
#x11vnc -create -xkb -noxrecord -noxfixes -noxdamage -auth guess -rfbauth /etc/x11vnc.pass -rfbport 5900&
#-findauth 
chown nomachine /etc/x11vnc.pass
sudo -u nomachine -E env "PATH=$PATH" /bliss_demo/vnc_startup_script.sh
echo -e "\n------------------ start nx----------------"
/nxserver.sh &
echo -e "\n------------------ start nx----------------"
sleep 3
mkdir -p /root/.config/glymur
chmod 777 /root/.config/glymur
sudo -u nomachine -E env "PATH=$PATH" /bliss_demo/bliss/bliss_startup_script.sh
echo -e "\n------------------ startup done----------------"
