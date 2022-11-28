#!/bin/bash

lines=$(ps aux | grep .jar | wc -l)
echo $lines
if [[ $lines -gt 4 ]]; then
 echo "---> jar process detected. Killing..."
 kill $(ps aux | grep .jar | grep sirius | head -n1 | cut -d" " -f5)
 echo "...killed"
else
 echo "---> No any jar process detected"

fi

echo "---> starting jar"
nohup /opt/jdk-17.0.5/bin/java -jar /tmp/project/*.jar > ~/backend.log 2>&1 &
