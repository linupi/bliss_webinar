#!/bin/bash
HOME=/home/nomachine
echo -e "\n------------------ copy desktop shortcuts----------------"
mkdir -p /home/nomachine/Desktop
cp /bliss_webinar/bliss/*.desktop /home/nomachine/Desktop/
mkdir /tmp/scans
ln -s /tmp/scans /home/nomachine/Desktop/data
echo -e "\n------------------ start activate conda----------------"
cd /bliss/
source /opt/conda/bin/activate demoenv
echo -e "\n------------------ start beacon----------------"
python demo/start_demo_servers.py 

