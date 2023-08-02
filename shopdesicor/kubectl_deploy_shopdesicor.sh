kubectl config set-context --current --namespace=devops-nhattien

kubectl delete deployment shopdesicor-admin-api || true
sleep 10

kubectl delete deployment shopdesicor-auth || true
sleep 10



kubectl apply -f /home/axyres/kubernetes/shopdesicor/shopdesicor-admin-api/deployment.yaml
kubectl apply -f /home/axyres/kubernetes/shopdesicor/shopdesicor-admin-api/shopdesicor-admin-api-pv.yaml
sleep 10
kubectl apply -f /home/axyres/kubernetes/shopdesicor/shopdesicor-auth/deployment.yaml
kubectl apply -f /home/axyres/kubernetes/shopdesicor/shopdesicor-auth/shopdesicor-auth-pv.yaml
