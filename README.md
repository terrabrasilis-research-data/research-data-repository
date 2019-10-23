# TerraBrasilis Research Data - Research Data Repository
A Research Data Repository provides researchers with the tools they need to store and disseminate their research data. This is done through two different forms of storage and for the dissemination an Research Data Repository counts with several services of access, catalog and processing. 

## Included components

* [Kubernetes Cluster](): Create and manage your own cloud infrastructure and use Kubernetes as your container orchestration engine.
* [PostgreSQL](): Sophisticated open-source Object-Relational DBMS supporting almost all SQL constructs.
* [GeoServer](): GeoServer is an open source server for sharing geospatial data. Designed for interoperability, it publishes data from any major spatial data source using open.
* [GeoNetwork](): GeoNetwork provides an easy to use web interface to search geospatial data across multiple catalogs. .

### 1. Create Kubernetes cluster


### 2. Create the services and the deployments

run the script ['scripts/generateHostKeys.sh'](scripts/generateHostKeys.sh)

run the script ['scripts/updateKeys.sh'](scripts/updateKeys.sh)

run the script ['scripts/start.sh'](scripts/start.sh)

```shell
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
kubectl create -f kubernetes/ssh.yaml
kubectl create -f kubernetes/ssh-service.yaml
```

### 3. Connect to the services

Get the services

```shell
kubectl get services
```

### For deletion of the resources

```shell
kubectl delete service postgres 
kubectl delete service geoserver 
kubectl delete service geonetwork 
kubectl delete service ssh 
kubectl delete deployment labtest
```
