#!/bin/bash

if [ $(ps aux | grep .jar | wc -l)  -gt 3 ]; then
kill $(ps aux | grep .jar | grep sirius | head -n1 | cut -d" " -f5)    
fi
nohup /opt/jdk-17.0.5/bin/java -jar /tmp/project/*.jar > backend.log 2>&1 &  
