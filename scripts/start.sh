#PersistentVolume
kubectl apply -f kubernetes/pv.yaml
kubectl apply -f kubernetes/pv-claim.yaml

#postgis
kubectl apply -f kubernetes/postgis-pod.yaml
kubectl apply -f kubernetes/postgis-service.yaml

#geoserver
kubectl apply -f kubernetes/geoserver-pod.yaml
kubectl apply -f kubernetes/geoserver-service.yaml

#owncloud
kubectl apply -f kubernetes/postgresql-pod.yaml
kubectl apply -f kubernetes/postgresql-service.yaml
kubectl create -f kubernetes/owncloud-pod.yaml
kubectl apply -f kubernetes/owncloud-service.yaml

#geonetwork
kubectl apply -f kubernetes/geonetwork-pod.yaml
kubectl apply -f kubernetes/geonetwork-service.yaml

kubectl get pods
kubectl get svc
