# ehp-devops
#support scripts

#kill -9 $(lsof -t -i:9090) - kill the npm;
#kill $(ps aux | grep .jar | grep sirius | head -n1 | cut -d" " -f5) - kill jar proc;

#sh 'ssh sirius@192.168.1.61 "nohup /opt/jdk-17.0.5/bin/java -jar /tmp/project/*.jar > backend.log 2>&1 &"';

#pm2 --name EHP start npm -- start

