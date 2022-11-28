#!/bin/bash

nvm install v18.10
cd /opt/front_ui/
pm2 kill
pm2 --name EHP start npm -- start
