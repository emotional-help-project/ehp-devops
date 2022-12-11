#!/bin/bash

lines=$(ps aux | grep .jar | wc -l)
echo $lines
if [[ $lines -gt 2 ]]; then
 echo "---> jar process detected. Killing..."
 kill $(ps aux | grep .jar | head -n1 | cut -d" " -f7)
 echo "...killed"
else
 echo "---> No any jar process detected"

fi

echo "---> starting jar"
nohup /opt/jdk-17.0.5/bin/java -jar /opt/backend/*.jar > ~/backend.log 2>&1 &
