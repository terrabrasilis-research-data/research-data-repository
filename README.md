# TerraBrasilis Research Data - Research Data Repository
A Research Data Repository provides researchers with the tools they need to store and disseminate their research data. This is done through two different forms of storage and for the dissemination an Research Data Repository counts with several services of access, catalog and processing. 

## Prerequisites

- Kubernetes cluster with kubectl installed and configured
- docker cli installed

## Installation

Deploy postgres
   ```
   kubectl create -f specs/postgres.yml --validate=false
   ```

Create a configmap
   ```
   kubectl create configmap hostname-config --from-literal=postgres_host=$(kubectl get svc postgres -o jsonpath="{.spec.clusterIP}")
   ```

Build the Spring app

   ```
   ./mvnw -DskipTests package
   ```

Build/Push a Docker image
   ```
   docker build -t gsansigolo/spring-boot-postgres-on-k8s:v1 .
   docker push gsansigolo/spring-boot-postgres-on-k8s:v1
   ```

Deploy the app
   ```
   kubectl create -f specs/spring-boot-app.yml
   ```

Create an load balancer
   ```
   kubectl expose deployment spring-boot-postgres-sample --type=LoadBalancer --port=8080
   ```

Get the External IP address of Service
   ```
   kubectl get svc spring-boot-postgres-sample

   ```
The the app is accessible at `http://<External IP Address>:8080`


Scale your application
   ```
   kubectl scale deployment spring-boot-postgres-sample --replicas=3
   ```

## Deleting the Resources

1. Delete the Spring Boot app deployment
   ```
   kubectl delete -f specs/spring-boot-app.yml
   ```

2. Delete the service for the app
   ```
   kubectl delete svc spring-boot-postgres-sample
   ```

3. Delete the hostname config map
   ```
   kubectl delete cm hostname-config
   ```

4. Delete Postgres
   ```
   kubectl delete -f specs/postgres.yml
   ```
