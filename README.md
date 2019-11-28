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
kubectl apply -f kubernetes/pv.yaml
kubectl apply -f kubernetes/pv-claim.yaml

#postgis
kubectl apply -f kubernetes/postgis-pod.yaml
kubectl apply -f kubernetes/postgis-service.yaml

#geoserver
kubectl apply -f kubernetes/geoserver-pod.yaml
kubectl apply -f kubernetes/geoserver-service.yaml

#owncloud
kubectl create -f kubernetes/owncloud-pod.yaml
kubectl apply -f kubernetes/owncloud-service.yaml
kubectl apply -f kubernetes/postgresql-pod.yaml
kubectl apply -f kubernetes/postgresql-service.yaml

#geonetwork
kubectl apply -f kubernetes/geonetwork-pod.yaml
kubectl apply -f kubernetes/geonetwork-service.yaml
```

### 3. Connect to the services

To check if a Service is running, use.
```shell
sudo kubectl exec -it [pod_name] -- /bin/bash
```

### For deletion of the resources

```shell
sudo kubectl delete service postgis 
sudo kubectl delete service postgresql 
sudo kubectl delete service geonetwork
sudo kubectl delete service geoserver 
sudo kubectl delete service owncloud 

sudo kubectl delete pods geoserver
sudo kubectl delete pods geonetwork
sudo kubectl delete pods owncloud
sudo kubectl delete pods postgis
sudo kubectl delete pods postgresql
```
