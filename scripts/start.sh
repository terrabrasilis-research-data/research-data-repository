#geoserver
kubectl apply -f kubernetes/geoserver-deployment.yaml
kubectl apply -f kubernetes/geoserver-data-persistentvolumeclaim.yaml
kubectl apply -f kubernetes/geoserver-service.yaml

#geonetwork
kubectl apply -f kubernetes/geonetwork-deployment.yaml
kubectl apply -f kubernetes/geonetwork-persistentvolumeclaim.yaml
kubectl apply -f kubernetes/geonetwork-service.yaml

#postgis
kubectl apply -f kubernetes/postgres-deployment.yaml
kubectl apply -f kubernetes/postgres-persistentvolumeclaim.yaml
kubectl apply -f kubernetes/postgres-service.yaml

kubectl get nodes
kubectl get svc

