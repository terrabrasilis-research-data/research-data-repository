#PersistentVolume
kubectl apply -f kubernetes/volume/pv.yaml
kubectl apply -f kubernetes/volume/pv-claim.yaml

#postgis
kubectl apply -f kubernetes/postgis/postgis-pod.yaml
kubectl apply -f kubernetes/postgis/postgis-service.yaml

#geoserver
kubectl apply -f kubernetes/geoserver/geoserver-pod.yaml
kubectl apply -f kubernetes/geoserver/geoserver-service.yaml

#owncloud
kubectl apply -f kubernetes/owncloud/postgresql-pod.yaml
kubectl apply -f kubernetes/owncloud/owncloud-pod.yaml
kubectl apply -f kubernetes/owncloud/owncloud-service.yaml

#geonetwork
kubectl apply -f kubernetes/geonetwork/geonetwork-pod.yaml
kubectl apply -f kubernetes/geonetwork/geonetwork-service.yaml

#terrama2
kubectl apply -f kubernetes/terrama2/alert-pod.yaml
kubectl apply -f kubernetes/terrama2/analysis-pod.yaml
kubectl apply -f kubernetes/terrama2/collector-pod.yaml
kubectl apply -f kubernetes/terrama2/interpolator-pod.yaml
kubectl apply -f kubernetes/terrama2/view-pod.yaml
kubectl apply -f kubernetes/terrama2/webapp-pod.yaml
kubectl apply -f kubernetes/terrama2/webmonitor-pod.yaml
kubectl apply -f kubernetes/terrama2/webapp-service.yaml
kubectl apply -f kubernetes/terrama2/webmonitor-service.yaml

kubectl get pods
kubectl get svc
