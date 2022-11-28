#!/bin/bash

if [ $(ps aux | grep .jar | wc -l)  -gt 3 ]; then
echo "jar process detected. Killing..."
kill $(ps aux | grep .jar | grep sirius | head -n1 | cut -d" " -f5)    
echo "...killed"
fi
nohup /opt/jdk-17.0.5/bin/java -jar /tmp/project/*.jar > backend.log 2>&1 &  
