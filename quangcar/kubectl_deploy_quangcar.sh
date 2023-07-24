kubectl config set-context --current --namespace=devops-nhattien
kubectl apply -f /home/axyres/kubernetes/quangcar/s-api/deployment.yaml
kubectl apply -f /home/axyres/kubernetes/quangcar/s-api/quangcar-api-pv.yaml