#!/bin/bash

#nvm install v18.10
pm2 kill
sleep 3
pm2 kill
npm install /opt/front_ui/
cd /opt/front_ui
pwd
pm2 --name EHP --interpreter=/home/sirius/.nvm/versions/node/v18.10.0/bin/node  start npm -- start
pwd
