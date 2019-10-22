#nginx
kubectl create -f kubernetes/nginx.yaml

#postgres
kubectl create -f kubernetes/postgres-configmap.yaml 
kubectl create -f kubernetes/postgres-storage.yaml 
kubectl create -f kubernetes/postgres-deployment.yaml 
kubectl create -f kubernetes/postgres-service.yaml

#ssh
kubectl create -f kubernetes/ssh.yaml
kubectl create -f kubernetes/ssh-service.yaml

kubectl get nodes
kubectl get svc

