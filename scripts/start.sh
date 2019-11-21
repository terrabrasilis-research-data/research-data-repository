#PersistentVolume
kubectl apply -f kubernetes/pv.yaml
kubectl apply -f kubernetes/pv-claim.yaml

#postgis
kubectl apply -f kubernetes/postgres-deployment.yaml
kubectl apply -f kubernetes/postgres-service.yaml

#geoserver
kubectl apply -f kubernetes/geoserver-deployment.yaml
kubectl apply -f kubernetes/geoserver-service.yaml

#geonetwork
kubectl apply -f kubernetes/geonetwork-deployment.yaml
kubectl apply -f kubernetes/geonetwork-service.yaml

kubectl get pods
kubectl get svc
