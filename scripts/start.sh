#postgres
kubectl create -f kubernetes/postgres-configmap.yaml 
kubectl create -f kubernetes/postgres-storage.yaml 
kubectl create -f kubernetes/postgres-deployment.yaml 
kubectl create -f kubernetes/postgres-service.yaml

kubectl get nodes
kubectl get svc postgres

kubectl expose deployment postgres --type=LoadBalancer --port=32130 --target-port=5432
