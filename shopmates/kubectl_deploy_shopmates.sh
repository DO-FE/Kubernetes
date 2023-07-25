kubectl config set-context --current --namespace=devops-nhattien

kubectl delete deployment shopmates-api || true
sleep 10

kubectl delete deployment shopmates-web || true
sleep 10

kubectl delete deployment shopmates-admin || true
sleep 10


kubectl apply -f /home/axyres/kubernetes/shopmates/s-api/deployment.yaml
kubectl apply -f /home/axyres/kubernetes/shopmates/s-api/shopamtes-api-pv.yaml
sleep 10
kubectl apply -f /home/axyres/kubernetes/shopmates/s-web/deployment.yaml
kubectl apply -f /home/axyres/kubernetes/shopmates/s-web/shopmates-web-pv.yaml
sleep 10
kubectl apply -f /home/axyres/kubernetes/shopmates/s-admin/deployment.yaml
kubectl apply -f /home/axyres/kubernetes/shopmates/s-admin/shopmates-admin-pv.yaml
