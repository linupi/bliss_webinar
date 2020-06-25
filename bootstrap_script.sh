#!/bin/bash

echo -e "\n------------------ bootstrap script --v1----------------"
cd /bliss_webinar
git fetch
git reset --hard origin/vnc
cd ../bliss
git fetch
git reset --hard origin/master
cd ..
echo "args $@"
bliss_webinar/startup_script.sh $@

