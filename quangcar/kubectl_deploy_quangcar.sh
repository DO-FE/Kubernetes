kubectl config set-context --current --namespace=devops-nhattien

kubectl delete deployment quangcar-api || true
sleep 10

kubectl apply -f /home/axyres/kubernetes/quangcar/q-api/deployment.yaml
kubectl apply -f /home/axyres/kubernetes/quangcar/q-api/quangcar-api-pv.yaml