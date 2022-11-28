# ehp-devops
support scripts

kill -9 $(lsof -t -i:9090) - kill the npm
kill $(ps aux | grep .jar | grep sirius | head -n1 | cut -d" " -f5) - kill jar proc

