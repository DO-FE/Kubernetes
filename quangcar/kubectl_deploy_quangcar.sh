kubectl config set-context --current --namespace=devops-nhattien
kubectl apply -f /home/axyres/kubernetes/quangcar/q-api/deployment.yaml
kubectl apply -f /home/axyres/kubernetes/quangcar/q-api/quangcar-api-pv.yaml