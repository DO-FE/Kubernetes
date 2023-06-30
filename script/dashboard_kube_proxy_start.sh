kubectl proxy --address='0.0.0.0' --port=8001 --accept-hosts='0.0.0.0,,^0\.0\.0\.0$,^\[:::\]$' --keepalive=100s &

#Create Token access k8s
#kubectl create serviceaccount dashboard-admin -n kubernetes-dashboard
#kubectl create clusterrolebinding dashboard-admin --clusterrole=cluster-admin --serviceaccount=kubernetes-dashboard:dashboard-admin
#kubectl -n kubernetes-dashboard create token dashboard-admin
