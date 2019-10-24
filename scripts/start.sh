#nginx
kubectl create -f kubernetes/nginx.yaml

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

#ssh
#kubectl create -f kubernetes/ssh.yaml
#kubectl create -f kubernetes/ssh-service.yaml

#nginx
kubectl apply -f kubernetes/nginx-ingess.yaml


kubectl get ingress
kubectl get pods
kubectl get svc
