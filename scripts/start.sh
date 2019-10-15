kubectl create -f kubernetes/local-volumes.yaml --validate=false
kubectl create -f kubernetes/postgres.yaml --validate=false
kubectl create -f kubernetes/drupal.yaml --validate=false
kubectl get nodes
kubectl get svc drupal
