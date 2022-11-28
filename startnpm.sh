#!/bin/bash

nvm install v18.10
pm2 kill
cd /opt/front_ui/
pm2 --name EHP start npm -- start
