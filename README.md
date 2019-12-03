# TerraBrasilis Research Data - Research Data Repository
A Research Data Repository provides researchers with the tools they need to store and disseminate their research data. This is done through two different forms of storage and for the dissemination an Research Data Repository counts with several services of access, catalog and processing. 

## Included components

* [Kubernetes Cluster](): Create and manage your own cloud infrastructure and use Kubernetes as your container orchestration engine.
* [PostgreSQL](): Sophisticated open-source Object-Relational DBMS supporting almost all SQL constructs.
* [GeoServer](): GeoServer is an open source server for sharing geospatial data. Designed for interoperability, it publishes data from any major spatial data source using open.
* [GeoNetwork](): GeoNetwork provides an easy to use web interface to search geospatial data across multiple catalogs. .

### 1. Create Kubernetes cluster

run the script ['scripts/dind-cluster/dind-cluster-v1.13.sh'](scripts/dind-cluster/dind-cluster-v1.13.sh)


### 2. Create the services and the deployments

run the script ['scripts/start.sh'](scripts/start.sh)

```shell
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
kubectl create -f kubernetes/owncloud/owncloud-pod.yaml
kubectl apply -f kubernetes/owncloud/postgresql-service.yaml
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
```

### 3. Connect to the services

To check if a Service is running, use.
```shell
sudo kubectl exec -it [pod_name] -- /bin/bash
```

### For deletion of the resources

```shell
sudo kubectl delete service postgis
sudo kubectl delete service geonetwork
sudo kubectl delete service postgresql
sudo kubectl delete service geoserver 
sudo kubectl delete service owncloud 
sudo kubectl delete service webapp 
sudo kubectl delete service webmonitor 


sudo kubectl delete pods geoserver
sudo kubectl delete pods geonetwork
sudo kubectl delete pods owncloud
sudo kubectl delete pods postgis
sudo kubectl delete pods postgresql
sudo kubectl delete pods webapp 
sudo kubectl delete pods webmonitor 
sudo kubectl delete pods alert 
sudo kubectl delete pods analysis 
sudo kubectl delete pods collector 
sudo kubectl delete pods view 
sudo kubectl delete pods interpolator 
```
