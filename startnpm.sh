#!/bin/bash

#nvm install v18.10
pm2 kill
sleep 3
pm2 kill
npm install /opt/front_ui/
#cd /opt/front_ui/ && pm2 --name EHP start npm -- start
