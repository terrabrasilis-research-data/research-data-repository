#postgres
kubectl create -f kubernetes/postgres-configmap.yaml 
kubectl create -f kubernetes/postgres-storage.yaml 
kubectl create -f kubernetes/postgres-deployment.yaml 
kubectl create -f kubernetes/postgres-service.yaml

kubectl apply -f kubernetes/nginx.yaml

kubectl get nodes
kubectl get svc postgres

