#nginx
kubectl create -f kubernetes/nginx.yaml

#postgres
kubectl create -f kubernetes/postgres-configmap.yaml 
kubectl create -f kubernetes/postgres-storage.yaml 
kubectl create -f kubernetes/postgres-deployment.yaml 
#kubectl create -f kubernetes/postgres-service.yaml
kubectl expose deployment postgres --type=LoadBalancer --name=postgres

kubectl get nodes
kubectl get svc postgres

