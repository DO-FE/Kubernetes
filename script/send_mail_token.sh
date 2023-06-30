export token="$(kubectl -n kubernetes-dashboard create token kubernetes-dashboard)"
export SENDGRID_API_KEY="$1"
export email="$2"

curl --request POST --url https://api.sendgrid.com/v3/mail/send --header "Authorization: Bearer $SENDGRID_API_KEY" --header 'Content-Type: application/json'  --data "{\"personalizations\": [{\"to\": [{\"email\": \"$email\"}]}],\"from\": {\"name\": \"Jenkins Nofitication Support\", \"email\": \"jenkins@devops-nhattien.asia\"},\"subject\": \"Generate Token Access Kubernetes Dashboard\",\"content\": [{\"type\": \"text/plain\", \"value\": \"Hi there, Here is your token:\\n $token \\n\\nDOFE \"}]}"

