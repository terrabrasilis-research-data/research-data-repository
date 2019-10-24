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
kubectl create -f kubernetes/static-ip-svc.yaml
#kubectl get svc nginx-ingress-lb
kubectl create -f kubernetes/nginx-ingress-controller.yaml
kubectl create -f kubernetes/ingress-nginx.yaml

kubectl get pods
kubectl get svc
