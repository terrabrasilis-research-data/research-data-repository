#PersistentVolume
kubectl apply -f kubernetes/pv.yaml
kubectl apply -f kubernetes/pv-claim.yaml

#postgis
kubectl apply -f kubernetes/postgis-deployment.yaml
kubectl apply -f kubernetes/postgis-service.yaml

#geoserver
kubectl apply -f kubernetes/geoserver-deployment.yaml
kubectl apply -f kubernetes/geoserver-service.yaml

#owncloud
kubectl apply -f kubernetes/owncloud-deployment.yaml
kubectl apply -f kubernetes/nginx-deployment.yaml
kubectl apply -f kubernetes/nginx-service.yaml
kubectl apply -f kubernetes/postgresql-deployment.yaml

#geonetwork
#kubectl apply -f kubernetes/geonetwork-deployment.yaml
#kubectl apply -f kubernetes/geonetwork-service.yaml

kubectl get pods
kubectl get svc
