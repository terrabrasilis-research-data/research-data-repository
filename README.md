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
kubectl apply -f kubernetes/postgres-deployment.yaml
kubectl apply -f kubernetes/postgres-service.yaml

#geoserver
kubectl apply -f kubernetes/geoserver-deployment.yaml
kubectl apply -f kubernetes/geoserver-service.yaml

#geonetwork
kubectl apply -f kubernetes/geonetwork-deployment.yaml
kubectl apply -f kubernetes/geonetwork-service.yaml
```

### 3. Connect to the services

Get the services

```shell
kubectl get services
```

Use port 5433 to connect to PostgreSQL from machine/node present
```shell
psql -h [host_port] -U geonetwork --password -p 5432
```

### For deletion of the resources

```shell
sudo kubectl delete service postgres 
sudo kubectl delete service geonetwork 
sudo kubectl delete service geoserver
sudo kubectl delete deployment geonetwork
sudo kubectl delete deployment geoserver
sudo kubectl delete deployment postgres
```
