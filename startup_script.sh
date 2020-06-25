#!/bin/bash

echo -e "\n------------------ bliss startup script -v3----------------"
echo -e "\n------------------ start x1vnc----------------"
chown nomachine /etc/x11vnc.pass
sudo -u nomachine -E env "PATH=$PATH" /bliss_demo/vnc_startup_script.sh
echo -e "\n------------------ start nx----------------"
/nxserver.sh &
echo -e "\n------------------ start novnc----------------"
websockify -D --web=/usr/share/novnc/ 6080 localhost:5900 &
echo -e "\n------------------ start bliss----------------"
sleep 3
mkdir -p /root/.config/glymur
chmod 777 /root/.config/glymur
sudo -u nomachine -E env "PATH=$PATH" /bliss_webinar/bliss/bliss_startup_script.sh
echo -e "\n------------------ startup done----------------"
