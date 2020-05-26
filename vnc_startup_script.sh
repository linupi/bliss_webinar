#!/bin/bash

echo -e "\n------------------ start x1vnc script----------------"
HOME=/home/nomachine
COOKIE=`ps -ef | md5sum | cut -f 1 -d " "`
AUTHFILE=$HOME/Xvfb-0.auth
xauth -f $AUTHFILE add :0 MIT-MAGIC-COOKIE-1 $COOKIE
xauth add :0 MIT-MAGIC-COOKIE-1 $COOKIE
Xvfb :0 -auth $AUTHFILE -screen 0 1600x900x24 &
DISPLAY=:0 nohup /etc/X11/Xsession default &
sleep 2
DISPLAY=:0 x11vnc -xkb -noxrecord -rfbauth /etc/x11vnc.pass -rfbport 5900 &

#-noxdamage
