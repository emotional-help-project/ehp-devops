#!/bin/bash

kill $(ps aux | grep .jar | grep sirius | head -n1 | cut -d" " -f5)    //stopping previous proccess
nohup /opt/jdk-17.0.5/bin/java -jar /tmp/project/*.jar > backend.log 2>&1 &   // Launch the new one in background
