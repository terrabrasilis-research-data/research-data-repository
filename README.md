# TerraBrasilis Research Data - Research Data Repository
A Research Data Repository provides researchers with the tools they need to store and disseminate their research data. This is done through two different forms of storage and for the dissemination an Research Data Repository counts with several services of access, catalog and processing. 

## Included components

* [Kubernetes Cluster](): Create and manage your own cloud infrastructure and use Kubernetes as your container orchestration engine.
* [PostgreSQL](): Sophisticated open-source Object-Relational DBMS supporting almost all SQL constructs.

### 1. Create Kubernetes cluster

```shell
ansible-playbook -i hosts kube-cluster/initial.yml
ansible-playbook -i hosts kube-cluster/kube-dependencies.yml
ansible-playbook -i hosts kube-cluster/master.yml

```

### 2. Create the service and deployment

run ['scripts/start.sh'](scripts/start.sh).


### 3. Access Drupal

Check the status:

```shell
kubectl get pods -l app=drupal
```

Know the IP adress of Drupal.

```shell
$ minikube service drupal --url
```

Access the newly deployed Drupal site via http://<IP_ADDRESS>:30080

