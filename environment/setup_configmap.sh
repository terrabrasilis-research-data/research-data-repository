#!/bin/bash

echo "Creating ConfigMaps in cluster"

kubectl apply -f kubernetes/nginx/nginx.configmap.yaml 

kubectl create configmap webapp-config --from-file=kubernetes/terrama2/conf/webapp/default.json
kubectl create configmap webmonitor-config --from-file=kubernetes/terrama2/conf/webmonitor/default.json
kubectl create configmap pgpass-config --from-file=kubernetes/terrama2/conf/.pgpass
