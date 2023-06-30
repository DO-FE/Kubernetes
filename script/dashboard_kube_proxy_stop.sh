kill -9 $(ps -ef | grep -v grep | grep "kubectl proxy" | awk '{print $2}')
