kubectl apply -f s-api/deployment.yaml
sleep 10
kubectl apply -f s-web/deployment.yaml
sleep 10
kubectl apply -f s-admin/deployment.yaml
