# TerraBrasilis Research Data - Research Data Repository
A Research Data Repository provides researchers with the tools they need to store and disseminate their research data. This is done through two different forms of storage and for the dissemination an Research Data Repository counts with several services of access, catalog and processing. 

## Included components

* [Kubernetes Cluster](): Create and manage your own cloud infrastructure and use Kubernetes as your container orchestration engine.
* [PostgreSQL](): Sophisticated open-source Object-Relational DBMS supporting almost all SQL constructs.

### 1. Create Kubernetes cluster


### 2. Create the services and the deployments

run the script ['scripts/generateHostKeys.sh'](scripts/generateHostKeys.sh)

run the script ['scripts/updateKeys.sh'](scripts/updateKeys.sh)

run the script ['scripts/start.sh'](scripts/start.sh)

```shell
kubectl create -f kubernetes/nginx.yaml
kubectl create -f kubernetes/postgres-configmap.yaml
kubectl create -f kubernetes/postgres-storage.yaml
kubectl create -f kubernetes/postgres-deployment.yaml
kubectl create -f kubernetes/postgres-service.yaml
kubectl create -f kubernetes/ssh.yaml
kubectl create -f kubernetes/ssh-service.yaml
```

### 3. Connect to the pods

Get the services

```shell
kubectl get services
```

### For deletion of PostgreSQL resources

```shell
kubectl delete service postgres 
kubectl delete service ssh 
kubectl delete deployment postgres
kubectl delete deployment ssh
kubectl delete configmap postgres-config
kubectl delete persistentvolumeclaim postgres-pv-claim
kubectl delete persistentvolume postgres-pv-volume
```
